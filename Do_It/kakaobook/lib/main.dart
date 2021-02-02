import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HttpApp(),
    );
  }
}

class HttpApp extends StatefulWidget {
  @override
  _HttpAppState createState() => _HttpAppState();
}

class _HttpAppState extends State<HttpApp> {
  String result = '';
  List data;

  @override
  void initState() {
    super.initState();
    data = new List();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('http example'),
      ),
      body: Container(
        child: Center(child: data.length == 0 ? Text('$data') : Text('text')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          getJSONDate();
        },
        child: Icon(Icons.file_download),
      ),
    );
  }

  Future<String> getJSONDate() async {
    var url = 'https://dapi.kakao.com/v3/search/book?target=title&query=doit';
    var response = await http.get(Uri.encodeFull(url),
        headers: {"Authorization": "KakaoAK aa91378268011c673401c4605ddb22ea"});
    print(response.body);
    setState(() {
      var dataConvertedToJSON = json.decode(response.body);
      List result = dataConvertedToJSON['document'];
      data.addAll(result);
    });
    print("==================");
    print(data);
    return response.body;
  }
}
