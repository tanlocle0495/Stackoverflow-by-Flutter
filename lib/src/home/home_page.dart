import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stackoverflow/src/bloc/questionbloc/bloc.dart';
import 'package:stackoverflow/src/home/HomWidget.dart';
import 'package:stackoverflow/src/repository/home_repository.dart';

class HomePage extends StatefulWidget {
  final HomeRepository repository;

  const HomePage({Key key, this.repository}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePageState(repository);
  }
}

class _HomePageState extends State<HomePage> {
  final HomeRepository repository;

  _HomePageState(this.repository);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: BlocProvider(
          create: (context) => QuestionBloc(repository),
          child: HomeWidget(),
        ),
      ),
    ); //hiden show  banner debug(
  }
}
