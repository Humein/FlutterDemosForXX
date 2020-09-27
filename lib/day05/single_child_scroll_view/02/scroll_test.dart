import 'package:flutter/material.dart';

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

  ScrollController _ctrl;//略同...
  @override
  void initState() {
    _ctrl=ScrollController(initialScrollOffset: 10)//初始偏移
      ..addListener((){
        var min=_ctrl.position.minScrollExtent; //可滑动的最大小值
        var max=_ctrl.position.maxScrollExtent; //可滑动的最大值
        print('---Extent:----$min-------$max----');

        var axis=_ctrl.position.axis; //滑动的轴向
        print('---axis:----$axis-----------');

//顶部距离父容器的高度(已滑动了多少)
        var pixels=_ctrl.position.pixels;
        print('---pixels:----$pixels-----------');

//是否滑到顶或底  可和下面的属性结合使用
        var atEdge=_ctrl.position.atEdge;
        var direction=_ctrl.position.userScrollDirection;//向上ScrollDirection.forward
        print('---atEdge:----$atEdge-----Direction:-----$direction-----');

        var dimension=_ctrl.position.viewportDimension;//滑动区域大小
        print('---dimension:----$dimension----------');});
    super.initState();
  }

  @override
  void dispose() {
    _ctrl.dispose();//销毁控制器
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
    return Container(
      padding: EdgeInsets.all(8),
      width: 300,
      height: 150,
      color: Colors.grey.withAlpha(44),
      child: SingleChildScrollView(
          controller: _ctrl,
          child: items),
    );
  }
}
