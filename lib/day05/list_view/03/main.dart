import 'package:flutter/material.dart';
import 'package:flutter_journey/day05/pome_item/03/poem_item_widget.dart';



void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
///////---------------------------------------------------------------
    var data = <PoemItem>[];
    for (var i = 0; i < 20; i++) {//模拟数据
      data.add(PoemItem(
          isCard:false,
          image: AssetImage("assets/images/wy_200x300.jpg"),
          title: "$i:以梦为马", author: "海子",
          summary: "我要做远方的忠诚的儿子"
          "和物质的短暂情人，和所有以梦为马的诗人一样，"
          "我不得不和烈士和小丑走在同一道路上"));
    }

//数据填充条目界面
    var show = ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: data.length, //条目的个数
        itemBuilder: (BuildContext context, int index)=>
            PoemItemWidget(
                data: data[index]
            )
    );
///////---------------------------------------------------------------
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(child: show),
      ),
    );
  }
}


