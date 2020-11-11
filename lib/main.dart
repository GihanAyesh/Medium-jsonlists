import 'package:flutter/material.dart';
import 'api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp();
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Handling'),
        ),
        body: Center(
          child: Text('Check your debug console'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            API.getAlbums();
          }),
          child: Icon(Icons.music_note),
        ),
      ),
    );
  }
}
