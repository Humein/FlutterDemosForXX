import 'package:flutter/material.dart';
import 'package:flutter_journey/day06/evn/03/flutter_container.dart';


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
        body: Center(child: FlutterContainer(
            config: AnimConfig(mode: FlutterMode.random),
            child:Text( "捷", style: TextStyle(fontSize: 30),))),
      ),
    );
  }
}


