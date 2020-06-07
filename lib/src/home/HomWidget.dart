import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stackoverflow/src/bloc/questionbloc/bloc.dart';
import 'package:stackoverflow/src/widget/question_item_widget.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBloc, QuestionState>(
      builder: (context, state) {
        if (state is Empty) {
          BlocProvider.of<QuestionBloc>(context).add(FrechQuestion());
        }
        if (state is QuoteError) {
          return Center(
            child: Text("ERROR"),
          );
        }
        if (state is QuestionLoaded) {
          var data = state.data;
          return Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    width: double.infinity,
                    // 3 phan 10
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF61f3b4),
                            Color(0xFF4bbab8),
                            Color(0xFF317fb9)
                          ],
                        ),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: Column(
                      children: <Widget>[],
                    ),
                  ),
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    title: Text("Stack Overflow"),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.15,
                    left: 20,
                    right: 20,
                    child: Container(
                      width: double.infinity,
                      child: Text(
                        "Hi, Welcome to Stack Overflow Questions App",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.topCenter,
                child: Text(
                  "All Question",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: data.items.length,
                    itemBuilder: (context, pos) {
                      return QuestionItemWidget(item: data.items[pos]);
                    }),
              )
            ],
          );
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
/*

class _HomeWidgetState extends State<HomeWidget> {
  //#61f3b4
//  #4bbab8/
//  #317fb9

 
  @override
  Widget build(BuildContext context) {


    return BlocBuilder<HomeBloc,HomeState>{

    }
  }
}
*/
/* */
