import 'package:flutter/material.dart';
import 'package:rogue_media_app/CardPage.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MedCore360"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: const Text('Notes'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardPage()),
                );
              },
            ),
          ],
        ),
      ),
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
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}