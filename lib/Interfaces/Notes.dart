import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

import 'AddNotes.dart';
import 'EditNotes.dart';

class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  TextEditingController searchController = new TextEditingController();
  late Query _ref;
  DatabaseReference reference =
  FirebaseDatabase.instance.reference().child('Notes');
  @override
  void initState() {
    super.initState();
    _ref = FirebaseDatabase.instance
        .reference()
        .child('Notes')
        .orderByChild('title');
  }

  Widget _buildContectItem(Map note) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8.0, top: 8),
      child: SingleChildScrollView(
        child: Container(
          height: 250,
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: Colors.white,
            elevation: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.title_outlined,
                          color: Theme.of(context).primaryColor, size: 28),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        note['title'],
                        style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.description_rounded,
                          color: Theme.of(context).primaryColor, size: 20),
                      SizedBox(
                        width: 6,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Flexible(
                        child: Text(
                          note['description'],
                          style: TextStyle(
                              fontSize: 16,
                              color: Theme.of(context).hintColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => EditNotes(
                                noteKey: note['key'],
                              ),
                            ));
                      },
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0, top: 18),
                          child: Row(
                            children: [
                              Icon(
                                Icons.edit,
                                color: Theme.of(context).primaryColor,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Edit',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Theme.of(context).hintColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _showDeleteDialog(note: note);
                      },
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 18.0, top: 15),
                          child: Row(
                            children: [
                              Icon(
                                Icons.delete,
                                color: Theme.of(context).primaryColor,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Delete',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Theme.of(context).hintColor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _showDeleteDialog({required Map note}) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Delete ${note['title']}'),
            content: Text('Are you sure?'),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel"),
              ),
              FlatButton(
                onPressed: () {
                  reference
                      .child(note['key'])
                      .remove()
                      .whenComplete(() => Navigator.pop(context));
                },
                child: Text("Delete"),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Notes",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Social Notes Card",
              style: TextStyle(color: Colors.white, fontSize: 12.0),
            )
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        child: FirebaseAnimatedList(
          query: _ref,
          itemBuilder: (BuildContext context, DataSnapshot snapshot,
              Animation<double> animation, int index) {
            Map note = snapshot.value;
            note['key'] = snapshot.key;
            return _buildContectItem(note);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) {
                return AddNotes();
              },
            ),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}