import 'package:flutter/material.dart';

import 'package:flutter_journey/day05/single_child_scroll_view/03/scroll_test.dart';


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
        body: Center(child: ScrollTest()),
      ),
    );
  }
}


