import 'package:flutter/material.dart';
import 'watchPainter.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.indigoAccent,
          alignment: Alignment.center,
          child: AspectRatio(
            aspectRatio: 2/3,
            child: CustomPaint(
              painter: WatchPainter(),
            ),
          ),
        ),
      ),
    );
  }
}
