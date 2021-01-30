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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 100,
                color: Colors.white,
                child: Text('Container'),
              ),
              SizedBox(width: 20,),
              Container(
                height: 100,
                color: Colors.blue,
                child: Text('Container'),
              ),
              Container(
                height: 100,
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
