import 'package:flutter/material.dart';
import 'package:flutter_journey/day10/13/app/provider/theme_state.dart';
import 'package:flutter_journey/day10/13/side_page.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SlidePage(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Consumer<ThemeState>(builder: (_,state,__)=>Text(
              'You have pushed the button this many times:',
               style: TextStyle(color: state.primaryColor,fontSize: 18),
            )),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: Consumer<ThemeState>(builder: (_,state,__)=>FloatingActionButton(
        onPressed: _incrementCounter,
        backgroundColor: state.primaryColor,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    ));
  }
}
