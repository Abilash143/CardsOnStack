import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: Icon(Icons.camera),
                    title: Text('Sample Card 1'),
                    subtitle: Text('Default Elevation'),
                  ),
                ),
                Card(
                    elevation: 8,
                    child: ListTile(
                      leading: Icon(Icons.camera),
                      title: Text('Sample Card 2'),
                      subtitle: Text('Elevation - 8'),
                    )),
                Card(
                    elevation: 16,
                    child: ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Sample Card 3'),
                      subtitle: Text('Elevation - 16'),
                    )),
                Card(
                    elevation: 24,
                    color: Colors.pink,
                    shadowColor: Colors.yellow,
                    child: ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Sample Card 4'),
                      subtitle: Text('Elevation - 24'),
                    )),
                Stack(
                  children: <Widget>[
                    Card(
                        child: ListTile(
                      leading: Icon(Icons.camera),
                      title: Text('Sample Card 1 in Stack'),
                      subtitle: Text('Default Elevation'),
                    )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 8),
                      child: Card(
                          elevation: 8,
                          child: ListTile(
                            leading: Icon(Icons.camera),
                            title: Text('Sample Card 2 in Stack'),
                            subtitle: Text('Elevation - 8'),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 32, 16, 16),
                      child: Card(
                          elevation: 16,
                          child: ListTile(
                            leading: Icon(Icons.album),
                            title: Text('Sample Card 3 in Stack'),
                            subtitle: Text('Elevation - 16'),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24.0, 48, 24, 24),
                      child: Card(
                          elevation: 24,
                          child: ListTile(
                            leading: Icon(Icons.album),
                            title: Text('Sample Card 4 in Stack'),
                            subtitle: Text('Elevation - 24'),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
