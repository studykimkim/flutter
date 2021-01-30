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
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
                child: Text('Container'),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Text('Container'),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Text('Container'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
