import 'package:flutter/material.dart';
import 'package:rogue_media_app/CardPage.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 500,
        child: DecoratedBox(
          // ignore: unnecessary_new
          decoration: new BoxDecoration(
            color: const Color(0xff7c94b6),
            image: new DecorationImage(
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Colors.purple.withOpacity(1.0), BlendMode.softLight),
              image: AssetImage("assets/ggg.jpg"),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 300, top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                DropdownButton<String>(
                  hint: const Text(
                    "Menu",
                    style: TextStyle(color: Colors.white),
                  ),
                  iconEnabledColor: Colors.white,
                  dropdownColor: Colors.blueGrey,
                  iconSize: 30,
                  icon: const Icon(Icons.menu),
                  items:
                      <String>['Notes'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CardPage()),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
