import 'package:flutter/material.dart';

class EditNote extends StatelessWidget {
  const EditNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Edit Note',
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Text(
                    "Edit Social Card Note",
                    style: TextStyle(fontSize: 25),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Title',
                          hintText: 'Note Title',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Description',
                          hintText: 'Note Description',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blueGrey,
                      child: Text('Edit'),
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EditNote()),
                        ),
                      },
                    ),
                  )
                ],
              )),
        ));
  }
}
