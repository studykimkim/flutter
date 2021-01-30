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
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('images/sample1.jpg'),
            ),
            Text(
              'JaeYeon kim',
              style: TextStyle(
                  fontSize: 40, color: Colors.white, fontFamily: 'Pacifico'),
            ),
            Text(
              'this is sample app',
              style: TextStyle(
                  color: Colors.teal.shade100,
                  fontSize: 20,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '+82 010 6375 9204',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'jaeyeon423@gmail.com',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
