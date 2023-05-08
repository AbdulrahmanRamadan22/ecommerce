import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:dartz/dartz.dart';
import 'package:store_app_advanced/data/remote/status_request.dart';

import '../../shared/function/check_internet.dart';

class Api {
  Future<Either<StatusRequest, Map>> getData({
    required String url,
    String? token,

  }) async {
    Map<String, String> headers = {};
    headers.addAll({
      'Content-Type': 'application/json',

    });
    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer$token',
      });
    }

    if (await checkInternet()) {
      http.Response response = await http.get(Uri.parse(url), headers: headers);
      if (response.statusCode == 200 || response.statusCode == 201) {
        Map<String, dynamic> data = jsonDecode(response.body);
        print(data);
        return right(data);
      } else {
        throw Exception(
            ' ${left(StatusRequest.serverFailed)} There is a issue with the status code ${response.statusCode}');
      }
    } else {
      throw Exception(
          ' ${left(StatusRequest.offlineFailed)}No internet connection please turn it on');
    }
  }

  Future<Either<StatusRequest, Map>> postData({
    required String url,
    required dynamic body,

    String? token,
  }) async {
    Map<String, String> headers = {};
    headers.addAll({
      'Content-Type': 'application/json',
    });

    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer$token',
      });
    }

    if (await checkInternet()) {
      http.Response response = await http.post(Uri.parse(url),
          body: jsonEncode(body),
        headers: headers,
      );


      print(response.statusCode);

      if (response.statusCode == 201 || response.statusCode == 200) {
        Map<String,dynamic> data = jsonDecode(response.body);
        print(data);
        return right(data);
      } else {
        throw Exception(
            ' ${left(StatusRequest.serverFailed)} There is a issue with the status code ${response.statusCode}');
      }
    } else {
      throw Exception(
          ' ${left(StatusRequest.offlineFailed)}No internet connection please turn it on');
    }
  }

  Future<Either<StatusRequest, Map<String, dynamic>>> putData({
    required String url,
    required dynamic body,
    String? token,
    String lang = 'en',
  }) async {
    Map<String, String> headers = {};
    headers.addAll({
      'Content-Type': 'application/json',

    });
    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer$token',
      });
    }

    if ( await checkInternet()) {
      http.Response response = await http.put(Uri.parse(url),
          body: jsonEncode(body), headers: headers);

      if (response.statusCode == 200 || response.statusCode == 201) {
        Map<String, dynamic> data = jsonDecode(response.body);
        print(data);
        return right(data);
      } else {
        throw Exception(' ${left(StatusRequest.serverFailed)} '
            'There is a issue with the status code ${response.statusCode}'
            'with body ${response.body} ');
      }
    } else {
      throw Exception('${left(StatusRequest.offlineFailed)}No internet connection please turn it on');
    }
  }
}
