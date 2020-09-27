import 'dart:math';

import 'package:flutter/material.dart';
import 'ability_widget.dart';



void main() => runApp(App());

class App extends StatelessWidget {
  App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var show = AbilityWidget(
        data: {"语文": 40.0, "数学": 30.0, "英语": 20.0, "政治": 40.0,
          "音乐": 80.0, "生物": 50.0, "化学": 60.0, "地理": 80.0,},
        config: AbilityConfig(
          duration: 1500,
          image: AssetImage("assets/images/sabar.jpg"),
          radius: 150,
          color: Colors.black,
        ));



    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('主页'),
            ),
            body:  show,));
  }
}
