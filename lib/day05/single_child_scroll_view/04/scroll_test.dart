import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollTest extends StatefulWidget {
  @override
  _ScrollTestState createState() => _ScrollTestState();
}

class _ScrollTestState extends State<ScrollTest> {
//颜色列表
  var rainbow = [
    0xffff0000,
    0xffFF7F00,
    0xffFFFF00,
    0xff00FF00,
    0xff00FFFF,
    0xff0000FF,
    0xff8B00FF
  ];

  ScrollController _ctrl;
  double _rate = 0;

  @override
  void initState() {
    _ctrl=ScrollController(
        initialScrollOffset: 10//初始偏移
    )..addListener((){
      var min=_ctrl.position.minScrollExtent; //可滑动的最大小值
      var max=_ctrl.position.maxScrollExtent; //可滑动的最大值
      var atEdge=_ctrl.position.atEdge;//是否滑到顶或底  可和下面的属性结合使用
      var direction=_ctrl.position.userScrollDirection;//向上ScrollDirection.forward

      if(direction==ScrollDirection.forward&&atEdge){//滑到头
        _ctrl.animateTo(max, duration: Duration(seconds: 2), curve: Curves.bounceOut);
      }
      if(direction==ScrollDirection.reverse&&atEdge){//滑到底
        _ctrl.animateTo(min, duration: Duration(seconds: 2), curve: Curves.bounceOut);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _ctrl.dispose(); //销毁控制器
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var items = Column(
      //颜色条
      children: rainbow
          .map((color) => Container(
                height: 30,
                width: 200,
                color: Color(color),
              ))
          .toList(),
    );

    var scroll = SingleChildScrollView(
        controller: _ctrl,
        child: Transform.scale(scale: 1 - _rate * 0.5,
            child: Transform.rotate(angle:_rate*2*pi,child: items)));

    return Container(
      padding: EdgeInsets.all(8),
      width: 300,
      height: 150,
      color: Colors.grey.withAlpha(44),
      child: scroll,
    );
  }
}
