import 'package:http/http.dart' as http;
import 'dart:convert';

class NetwortHelper {

  NetwortHelper(this.url);

  final String url;

  Future<void> getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}