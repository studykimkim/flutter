import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:clima/services/networking.dart';

const apiKey = '2fefe33c1a48648dde7346c1b2eeffac';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location locationn = Location();
    await locationn.getCurrentLocation();
    latitude = locationn.latitude;
    longitude = locationn.longitude;
    NetwortHelper networtHelper = NetwortHelper(
        "https://api.openweathermap.org/data/2.5/weather?lat=37.5665&lon=126.9780&appid=$apiKey");
    var weatherData = await networtHelper.getData();

    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LocationScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
