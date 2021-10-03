import 'package:flutter/material.dart';
import 'package:rogue_media_app/AddnNote.dart';
import 'package:rogue_media_app/EditNote.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 890,
        width: 500,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 39),
                child: Text(
                  "Social Card Notes",
                  style: TextStyle(fontSize: 35),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 280, top: 10),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side:
                                  BorderSide(color: Colors.teal, width: 1.0)))),
                  child: Icon(
                    Icons.add,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Note()),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200, top: 10, left: 15),
                child: Row(
                  children: [
                    Text(
                      "Social Card Note",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                width: 400,
                color: Colors.white70,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18, left: 30),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 190),
                          child: Text(
                            "01-10-2021",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 0),
                          child: Row(children: [
                            Text(
                              "This is the description of the\nnote added to social card.",
                              style: TextStyle(fontSize: 20),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 150, top: 90),
                          child: Row(
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Colors.teal,
                                                width: 2.0)))),
                                child: Text('Edit'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EditNote()),
                                  );
                                },
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Colors.teal,
                                                width: 2.0)))),
                                child: Text('Delete'),
                                onPressed: () {
                                  showAlertDialog(context);
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  shadowColor: Colors.grey,
                  elevation: 10,
                  margin: EdgeInsets.all(10),
                ),
              ),
//new container card
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200, top: 10, left: 15),
                child: Row(
                  children: [
                    Text(
                      "Social Card Note",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                width: 400,
                color: Colors.white70,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18, left: 30),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 190),
                          child: Text(
                            "01-10-2021",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 0),
                          child: Row(children: [
                            Text(
                              "This is the description of the\nnote added to social card.",
                              style: TextStyle(fontSize: 20),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 150, top: 90),
                          child: Row(
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Colors.teal,
                                                width: 2.0)))),
                                child: Text('Edit'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EditNote()),
                                  );
                                },
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Colors.teal,
                                                width: 2.0)))),
                                child: Text('Delete'),
                                onPressed: () {
                                  showAlertDialog(context);
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  shadowColor: Colors.grey,
                  elevation: 10,
                  margin: EdgeInsets.all(10),
                ),
              ),
              //new
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200, top: 10, left: 15),
                child: Row(
                  children: [
                    Text(
                      "Happy Birthday",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                width: 400,
                color: Colors.white70,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18, left: 30),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 190),
                          child: Text(
                            "01-10-2021",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 0),
                          child: Row(children: [
                            Text(
                              "This is the description of the\nnote added to social card.",
                              style: TextStyle(fontSize: 20),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 150, top: 90),
                          child: Row(
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Colors.teal,
                                                width: 2.0)))),
                                child: Text('Edit'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EditNote()),
                                  );
                                },
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Colors.teal,
                                                width: 2.0)))),
                                child: Text('Delete'),
                                onPressed: () {
                                  showAlertDialog(context);
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  shadowColor: Colors.grey,
                  elevation: 10,
                  margin: EdgeInsets.all(10),
                ),
              ),
              //new
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200, top: 10, left: 15),
                child: Row(
                  children: [
                    Text(
                      "Social Card Note",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                width: 400,
                color: Colors.white70,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18, left: 30),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 190),
                          child: Text(
                            "01-10-2021",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 0),
                          child: Row(children: [
                            Text(
                              "This is the description of the\nnote added to social card.",
                              style: TextStyle(fontSize: 20),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 150, top: 90),
                          child: Row(
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Colors.teal,
                                                width: 2.0)))),
                                child: Text('Edit'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EditNote()),
                                  );
                                },
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Colors.teal,
                                                width: 2.0)))),
                                child: Text('Delete'),
                                onPressed: () {
                                  showAlertDialog(context);
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  shadowColor: Colors.grey,
                  elevation: 10,
                  margin: EdgeInsets.all(10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("No"),
      onPressed: () {},
    );
    Widget cancelButton = FlatButton(
      child: Text("Yes"),
      onPressed: () {},
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Warning"),
      content: Text("Are you sure to delete?"),
      actions: [okButton, cancelButton],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
