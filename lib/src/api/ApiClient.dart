import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stackoverflow/src/model/question_data.dart';

class ApiClient {
  final _baseUrl =
      'https://api.stackexchange.com/2.2/questions?page=10&pagesize=100&fromdate=1585699200&order=desc&min=1591315200&sort=activity&site=stackoverflow';
  final http.Client httpClient;

  ApiClient({this.httpClient}) : assert(httpClient != null);

  Future<QuestionData> getData() async {
    final response = await this.httpClient.get(_baseUrl);

    final json = jsonDecode(response.body);
    return QuestionData.fromJson(json);
  }
}
