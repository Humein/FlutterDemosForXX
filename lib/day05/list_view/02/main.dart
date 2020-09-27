import 'package:flutter/material.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
///////---------------------------------------------------------------
    var caverStyle = TextStyle(fontSize: 18, shadows: [ //文字样式
           Shadow(color: Colors.white, offset: Offset(-0.5, 0.5), blurRadius: 0)]);

    const colorMap = { //数据来源
      0xffff0000: "红色", 0xffFFFF00: "黄色",0xff00FF00: "绿色", 0xff0000FF: "蓝色",};
    var show = ListView.builder(//使用builder方法进行构造
        padding: EdgeInsets.all(8.0),
        itemCount: colorMap.length, //条目的个数
        itemBuilder: (BuildContext context, int index) =>//条目构造器
        Container(height: 50,
          color: Color(colorMap.keys.toList()[index]),
          child: Center(
              child: Text('${colorMap.values.toList()[index]}',
                style: caverStyle, )),
        )
    );
///////---------------------------------------------------------------
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(child: show),
      ),
    );
  }
}


