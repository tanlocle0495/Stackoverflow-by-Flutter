import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:stackoverflow/src/model/question_data.dart';
import 'package:http/http.dart' as http;

class ApiProvider {
  var url =
      "https://api.stackexchange.com/2.2/questions?page=10&pagesize=100&fromdate=1585699200&order=desc&min=1591315200&sort=activity&site=stackoverflow";
  Future<QuestionData> getData() async {
    var response = await http.get(url);
    QuestionData data = QuestionData();
    data.items = []; //set item  empty firsf
    final jsonResponse = json.decode(response.body);
//    Student student = new Student.fromJson(jsonResponse);
    var item = Items.fromJson(jsonResponse);
    data.items.add(item);
    return data;
  }
}
