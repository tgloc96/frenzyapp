import 'package:flutter/material.dart';

String _name = "Loc";

class ChatMessage extends StatelessWidget {
  String text;

  ChatMessage({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              child: Text(_name[0]),
            ),
          ),
          Column(
            //crossAxisAlignment: CrossAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_name, style: Theme.of(context).textTheme.subhead,),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: Text(text),
              )
            ],
          ),
//          Container(
//            margin: EdgeInsets.only(left: 16.0),
//            child: CircleAvatar(
//              child: Text(_name[0]),
//            ),
//          ),
        ],
      ),
    );
  }
}
