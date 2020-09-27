import 'dart:math';

import 'package:flutter/material.dart';
import 'file_list.dart';



void main() => runApp(App());

class App extends StatelessWidget {
  App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var show = FileList("/data/data/com.toly1994.flutter_journey",maxWith: 250,);

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
