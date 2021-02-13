import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
      return LocationScreen(locationWeather: weatherData,);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitHourGlass(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
