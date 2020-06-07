import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stackoverflow/src/api/ApiClient.dart';
import 'package:stackoverflow/src/bloc/questionbloc/question_delegate.dart';
import 'package:stackoverflow/src/home/home_page.dart';
import 'package:stackoverflow/src/repository/home_repository.dart';
import 'package:http/http.dart' as http;

void main() {
  BlocSupervisor.delegate = QuestionDelegate();
  final HomeRepository repository = HomeRepository(
    ApiClient(httpClient: http.Client()),
  );
  runApp(
    HomePage(repository: repository),
  );
}
