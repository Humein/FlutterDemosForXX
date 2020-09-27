import 'package:flutter/material.dart';

import 'package:flutter_journey/day06/anim/04/run_ball.dart';

import 'anim_tween.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(child: StarAnimWidget()),
      ),
    );
  }
}


