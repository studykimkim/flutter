import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void getgithub() async {
    String url = "https://www.naver.com";
    var response = await http.get(url);
    var statusCode = response.statusCode;
    var responseHeaders = response.headers;
    var responseBody = convert.utf8.decode(response.bodyBytes);

    // print("statusCode: ${statusCode}");
    // print("responseHeaders: ${responseHeaders}");
    // print("responseBody: ${responseBody}");

    List<dynamic> list = convert.jsonDecode(responseBody);
    print(list.length);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('github 3d'),
        ),
        body: Center(
          child: FloatingActionButton(
            onPressed: () {
              getgithub();
            },
          ),
        ),
      ),
    );
  }
}
