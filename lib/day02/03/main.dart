import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_journey/day02/03/utils/color_utils.dart';

import '../../iconfont.dart';


void main() {
  runApp(MyApp());
}

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
  String  _data = "读取资源json字符串";

  void _incrementCounter() {

//    rootBundle.loadString('assets/data/data.json').then((data){
//      setState(() {
//        _data=data;
//      });
//    });

    DefaultAssetBundle.of(context).loadString('assets/data/data.json').then((data){
      setState(() {
        _data=data;
      });
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
              '默认字体abc@01234',
              style: TextStyle(fontSize: 24,color: ColorUtils.parse("#33428A43")),

            ),
            Text(
              '阿里惠普体-自定义字体abc@01234',
             style: TextStyle(fontFamily: "阿里惠普体",fontSize: 24),
            ),
            Text(
              'Menlo-自定义字体abc@01234',
              style: TextStyle(fontFamily: "Menlo",fontSize: 24),
            ),
            Text(
              _data,
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(TolyIcon.icon_sound),
      ),
    );
  }
}
