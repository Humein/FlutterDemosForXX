import 'package:flutter/material.dart';

import 'chart_widget.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
///////---------------------------------------------------------------
    var right = ChatWidget(
      chartItem: ChatItem(
          headIcon: AssetImage("assets/images/icon_head.png"),
          type: ChartType.right,
          text: "凭君莫话封侯事，一将功成万骨枯。你觉得如何?"),
    );

    var left = ChatWidget(
      chartItem: ChatItem(
          headIcon: AssetImage("assets/images/wy_200x300.jpg"),
          type: ChartType.left,
          text: "在苍茫的大海上，狂风卷积着乌云，在乌云和大海之间，海燕像黑色的闪电，在高傲的飞翔。"),
    );

    var show = Column(
      children: <Widget>[right, left],
    );


///////---------------------------------------------------------------
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color(0xffEFEFEF),
        body: Padding(
          padding: const EdgeInsets.only(top:58.0),
          child: show,
        ),
      ),
    );
  }
}


