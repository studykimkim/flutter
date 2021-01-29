import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 100),
            padding: EdgeInsets.all(30),
            color: Colors.white,
            child: Text('hello'),
          ),
        ),
      ),
    );
  }
}
