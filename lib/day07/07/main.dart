import 'package:flutter/material.dart';
import 'package:flutter_journey/utils/toly_utils.dart';


import 'color_chooser.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var show= ColorChooser(//使用
     direction: Axis.horizontal,//水平排放
     radius: 20,//半径
     shadowColor: Colors.blue,//阴影颜色
      runSpacing: 10,//非主轴向条目间距
      spacing: 10,//主轴向条目间距
      colors: List<Color>.generate(10,(e)=>ColorUtils.randomColor()),//颜色数组
      onChecked: (c)=>print(c.toString()),//点击回调
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
            body: Center(child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: show,
            ))));
  }
}
