import 'package:flutter/material.dart';
import 'package:flutter_journey/day05/chart_widget/chart_widget.dart';
import 'package:flutter_journey/day05/list_view/05/chat_api.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
///////---------------------------------------------------------------
  var data=ChatApi().addMonk(50).chatItem;//获取数据
  var show = ListView.builder(
      itemCount: data.length, //条目的个数
      itemBuilder: (BuildContext context, int index)=>
          ChatWidget(chartItem: data[index]),
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


