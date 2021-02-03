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
        child: Center(
            child: data.length == 0
                ? Text('empty')
                : ListView.builder(itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Text(data[index]['title'].toString()),
                            Text(data[index]['authors'].toString()),
                            Text(data[index]['sale_price'].toString()),
                            Text(data[index]['status'].toString()),
                            Image.network(
                              data[index]['thumbnail'],
                              height: 100,
                              width: 100,
                              fit: BoxFit.contain,
                            )
                          ],
                        ),
                      ),
                    );
                  })),
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
    // var url = 'https://www.naver.com';
    // var response = await http.get(url);
    var url = 'https://dapi.kakao.com/v3/search/book?target=title&query=doit';
    var response = await http.get(Uri.encodeFull(url),
        headers: {"Authorization": "KakaoAK aa91378268011c673401c4605ddb22ea"});
    setState(() {
      var dataConvertedToJSON = json.decode(response.body);
      List result = dataConvertedToJSON['documents'];
      data.addAll(result);
    });
    return response.body;
  }
}
