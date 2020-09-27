import 'package:flutter/material.dart';
import 'paper.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  App({Key key}) :super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('主页'),
          ),
          body: PaperWidget(),)
    );
  }
}


