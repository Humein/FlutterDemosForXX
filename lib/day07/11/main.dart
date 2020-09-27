import 'dart:math';

import 'package:flutter/material.dart';
import 'rhythm_view.dart';

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
    var show = RhythmView(
      config: RhythmConfig(maxA: _maxA),
      onChange: () => setState(()=>_maxA = 60 * Random().nextDouble() + 30)
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
