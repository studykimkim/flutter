import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
    getData();
  }

  void getLocation() async {
    Location locationn = Location();
    await locationn.getCurrentLocation();
    print(locationn.latitude);
    print(locationn.longitude);
  }

  void getData() async {
    Response response = await get(
        "https://samples.openweathermap.org/data/2.5/weather?q=London&mode=html&appid=b6907d289e10d714a6e88b30761fae22");
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
