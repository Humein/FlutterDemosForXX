

import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    print(randomColor.runtimeType);
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
             style: TextStyle(color: randomColor()),
            ),
            Text(
              '${_counter}',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

//Color randomColor(){/// 用来返回一个随机色
//var random=Random();
//var a = random.nextInt(256);//透明度值
//var r = random.nextInt(256);//红值
//var g = random.nextInt(256);//绿值
//var b = random.nextInt(256);//蓝值
//return Color.fromARGB(a, r, g, b);//生成argb模式的颜色
//}

//Color randomColor(int limitA){
//  var random=Random();
//  var a = limitA+random.nextInt(256-limitA);//透明度值
//  var r = random.nextInt(256);//红值
//  var g = random.nextInt(256);//绿值
//  var b = random.nextInt(256);//蓝值
//  return Color.fromARGB(a, r, g, b);//生成argb模式的颜色
//}

//  Color randomColor([int limitA=120,limitB=100]){
//    var random=Random();
//    var a = limitA+random.nextInt(256-limitA);//透明度值
//    var r = random.nextInt(256);//红值
//    var g = random.nextInt(256);//绿值
//    var b = limitB+random.nextInt(256-limitB);//透明度值
//    return Color.fromARGB(a, r, g, b);//生成argb模式的颜色
//  }

  Color randomColor({int limitA=120,int limitR=0,int limitG=0,int limitB=0,}){
    var random=Random();
    var a = limitA+random.nextInt(256-limitA);//透明度值
    var r = limitR+random.nextInt(256-limitR);//红值
    var g = limitG+random.nextInt(256-limitG);//绿值
    var b = limitB+random.nextInt(256-limitB);//蓝值
    return Color.fromARGB(a, r, g, b);//生成argb模式的颜色
  }
}
