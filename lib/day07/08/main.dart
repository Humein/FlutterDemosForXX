import 'dart:math';

import 'package:flutter/material.dart';

import 'math runner.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var show = Container(width: 250, height: 150,
        color: Colors.grey.withAlpha(11),
        child: MathRunner(
            x: (t) => t,
            y: (t) => sin(t * pi),
            child: CircleAvatar(
      backgroundImage: AssetImage("assets/images/icon_head.png"),)));

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('主页'),
            ),
            body: Center(child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: show,
            ))));
  }
}
