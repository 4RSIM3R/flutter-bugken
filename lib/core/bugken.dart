import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/report.dart';

class Bugken {

  Future<http.Response> postBug(Report data) {
    return http.post(
      Uri.parse('http://localhost/api/log'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'key': ''
      },
      body: reportToJson(data),
    );
  }

}