import 'dart:math';

import 'package:flutter/material.dart';
import 'bigger_view.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var _maxA = 59.0;

  @override
  Widget build(BuildContext context) {
    var show = BiggerView(

      image: AssetImage("assets/images/sabar.jpg"),//图片
      config: BiggerConfig(
          rate: 3, //放大比例
          isClip: false//是否圆形
      ),
    );

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('主页'),
          ),
          body: Center(child: show),
        ));
  }
}
