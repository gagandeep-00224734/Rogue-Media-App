import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class AddNotes extends StatefulWidget {
  @override
  _AddNotesState createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  late TextEditingController _titleController, _desController;
  late DatabaseReference _ref;
  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _desController = TextEditingController();
    _ref = FirebaseDatabase.instance.reference().child('Notes');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Add Note"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextField(
                  controller: _titleController,
                  decoration: InputDecoration(
                    hintText: "Enter Title: ",
                    prefixIcon: Icon(
                      Icons.title,
                      size: 30,
                      color: Colors.blueGrey,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
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
                height: 30,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: RaisedButton(
                  child: Text(
                    "Add Note",
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
      ),
    );
  }

  void saveNote() {
    String title = _titleController.text;
    String des = _desController.text;
    Map<String, String> note = {
      'title': title,
      'description': des,
    };
    _ref.push().set(note).then((value) {
      Navigator.pop(context);
    });
  }
}