import 'dart:convert';

import 'package:html/parser.dart';
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
    print("---------------1");
    final response =
    await http.get('https://github.com/jaeyeon423');
    String body = response.body;
    var doc = parse(body);
    var rects = doc.getElementsByTagName('rect');

    var com = [];

    for(int i = 0 ; i < rects.length-5 ; i++){
      var result = rects[i].attributes.values.toString().split(', ');
//      print(rects[i].attributes);
      com.add([result[8], result[7]]);
    }
    print(com[com.length-3]);
    print("---------------2");
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

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
