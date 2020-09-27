import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
///////---------------------------------------------------------------
    var headIcon = Container(
        //左边头部
        decoration: BoxDecoration(
            //圆形装饰线
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              //阴影
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: Offset(0.0, 0.0),
                  blurRadius: 3.0,
                  spreadRadius: 0.0)
            ]),
        width: 70,
        height: 70,
        child: Padding(
          padding: EdgeInsets.all(3),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/wy_200x300.jpg"),
          ),
        ));

    var center = Wrap(
      //中间
      direction: Axis.vertical, //竖直排列
      crossAxisAlignment: WrapCrossAlignment.start, //孩子水平左对齐
      spacing: 4, //主轴(竖)间距
      children: <Widget>[
        Text("以梦为马",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        Text(
          "作者:海子",
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ],
    );

    var summary = Text(
      //尾部摘要
      "我要做远方的忠诚的儿子，和物质的短暂情人，和所有以梦为马的诗人一样，我不得不和烈士和小丑走在同一道路上",
      maxLines: 3, //最大三行
      overflow: TextOverflow.ellipsis,
      style: TextStyle(color: Colors.grey, fontSize: 12),
    );

    var item = Row(
      //条目拼合
      children: <Widget>[
        SizedBox(width: 10),
        headIcon,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: center,
        ),
        Expanded(
          child: summary,
        ),
        SizedBox(width: 10),
      ],
    );
    var show = Card(
      elevation: 5,
      child: Padding(padding: EdgeInsets.all(5), child: item), //阴影深
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
