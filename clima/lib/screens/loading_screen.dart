import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Position position;
    try {
      position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
    } on Exception catch (e) {
      print(e);
    }
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    String myMargin = 'abc';
    double myMarginAsADouble;

    try {
      myMarginAsADouble = double.parse(myMargin);
    } catch (e) {
      print(e);
      // myMarginAsADouble = 30.0;
    }
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(myMarginAsADouble ?? 10),
        color: Colors.teal,
      ),
    );
  }
}
