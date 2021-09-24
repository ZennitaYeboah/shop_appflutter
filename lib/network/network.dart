import 'package:http/http.dart';
import 'dart:convert';

class Network {
  Network({required this.url });
  late final String url;

  Future getAPIdata() async {
    Response response = await get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      String data = response.body;
      var decodeData = jsonDecode(data);
      print(decodeData);
      print(data);
      return decodeData;
    }else {
      print(response.statusCode);
    }
  }
}

