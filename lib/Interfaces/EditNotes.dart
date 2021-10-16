import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class EditNotes extends StatefulWidget {
  String noteKey;
  EditNotes({required this.noteKey});
  @override
  _EditNotesState createState() => _EditNotesState();
}

class _EditNotesState extends State<EditNotes> {
  late TextEditingController _titleController, _desController;
  late DatabaseReference _ref;
  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _desController = TextEditingController();
    _ref = FirebaseDatabase.instance.reference().child('Notes');
    getNoteDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Edit Note"),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _titleController,
              decoration: InputDecoration(
                hintText: "Enter Title: ",
                prefixIcon: Icon(
                  Icons.title_outlined,
                  size: 30,
                  color: Colors.blueGrey,
                ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: _desController,
              decoration: InputDecoration(
                hintText: "Enter Description: ",
                prefixIcon: Icon(
                  Icons.description_rounded,
                  size: 30,
                  color: Colors.blueGrey,
                ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: RaisedButton(
                child: Text(
                  "Save Changes",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                onPressed: () {
                  saveNote();
                },
                color: Theme.of(context).primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }

  getNoteDetails() async {
    DataSnapshot snapshot = await _ref.child(widget.noteKey).once();
    Map note = snapshot.value;
    _titleController.text = note['title'];
    _desController.text = note['description'];
    setState(() {});
  }

  void saveNote() {
    String title = _titleController.text;
    String des = _desController.text;
    Map<String, String> note = {
      'title': title,
      'description': des,
    };
    _ref.child(widget.noteKey).update(note).then((value) {
      Navigator.pop(context);
    });
  }
}