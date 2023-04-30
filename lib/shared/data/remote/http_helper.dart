
import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<Map<String, dynamic>> getData({
    required String url,
    String? token,
    String lang = 'en',
  }) async {
    Map<String, String> headers = {};
    headers.addAll({
      'Content-Type': 'application/json',
      'lang':lang,
    });
    if (token != null) {
      headers.addAll({
        'Authorization':'Bearer$token',
      });
    }

        http.Response response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200 || response.statusCode==201) {
      Map<String, dynamic> data = jsonDecode(response.body);
      print(data);
      return data;
    } else {
      throw Exception(
          'There is a issue with the status code ${response.statusCode}');
    }
  }

  Future<Map<String, dynamic>> post({
    required String url,
    required dynamic body,
    String? token,
    String lang = 'en',
  }) async {
    Map<String, String> headers = {};
    headers.addAll({
      'Content-Type': 'application/json',
      'lang': lang,
    });

    if (token != null) {
      headers.addAll({
        'Authorization':'Bearer$token',
      });
    }



    http.Response response =
    await http.post(Uri.parse(url),
        body:jsonEncode(body) ,
        headers: headers);

    if (response.statusCode == 200 || response.statusCode==201) {
      Map<String, dynamic> data = jsonDecode(response.body);
      print(data);
      return data;
    } else {
      throw Exception(
          'There is a issue with the status code ${response.statusCode}');
    }
  }


  Future<Map<String, dynamic>> put({
    required String url,
    required dynamic body,
    String? token,
    String lang = 'en',
  }) async {
    Map<String, String> headers = {};
    headers.addAll({
      'Content-Type': 'application/json',
      'lang': lang,
    });
    if (token != null) {
      headers.addAll({
        'Authorization':'Bearer$token',
      });
    }

    http.Response response =
    await http.put(Uri.parse(url),
        body:jsonEncode(body) ,
        headers: headers);

    if (response.statusCode == 200 || response.statusCode==201) {
      Map<String, dynamic> data = jsonDecode(response.body);
      print(data);
      return data;
    } else {
      throw Exception(
          'There is a issue with the status code ${response.statusCode} with body ${response.body} ');
    }
  }
}
