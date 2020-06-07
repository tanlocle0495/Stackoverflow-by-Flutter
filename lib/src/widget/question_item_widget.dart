import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stackoverflow/src/model/question_data.dart';

class QuestionItemWidget extends StatelessWidget {
  final Items item;

  QuestionItemWidget({this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.all(5),
      isThreeLine: true,
//      leading:
      leading: CircleAvatar(
          radius: 30.0,
          backgroundColor: Colors.blueGrey,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: Colors.blueGrey,
            backgroundImage: NetworkImage(item.owner.profileImage),
          )),
      title: Text(item.owner.displayName,
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18)),
      subtitle: Wrap(
        children: <Widget>[Text(item.title)],
      ),
      trailing: Chip(
        backgroundColor: Colors.blueGrey,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        label: Text(
          "${item.viewCount} View",
          style: TextStyle(color: Colors.white),
        ),
      ),
//      CircleAvatar(
//        radius: 25,
//        foregroundColor: Colors.white,
//        backgroundColor: Colors.blueGrey,
//        child: Text("saaasassa"),
//      ),
//      title: Text("saaasassa"),
//      trailing: Chip(
//        backgroundColor: Colors.blueGrey,
//        shape: BeveledRectangleBorder(
//          borderRadius: BorderRadius.circular(10),
//        ),
//        label: Text(
//          "saaasassa",
//          style: TextStyle(
//            color: Colors.white,
//          ),
//        ),
//      ),
    );
  }
}
