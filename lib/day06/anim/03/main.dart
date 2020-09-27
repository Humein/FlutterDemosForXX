import 'package:flutter/material.dart';

import 'package:flutter_journey/day06/anim/03/run_ball.dart';


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
        body: Center(child: RunBallWidget(size:Size(200, 150))),
      ),
    );
  }
}


