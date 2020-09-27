import 'package:flutter/material.dart';

class GestureDetectorTest extends StatefulWidget {
  @override
  _GestureDetectorTestState createState() => _GestureDetectorTestState();
}

class _GestureDetectorTestState extends State<GestureDetectorTest> {

  @override
  Widget build(BuildContext context) {
    var show = GestureDetector(
        child: Container( color: Colors.cyanAccent, width: 300, height: 100,),
      onPanDown: (detail) => print("拖拽按下:全局${detail.globalPosition})""--相对:${detail.localPosition})"),
      onPanStart: (detail) => print("开始拖拽:全局${detail.globalPosition})""--相对:${detail.localPosition})"),
      onPanUpdate:(detail) => print("拖拽更新:全局${detail.globalPosition})""--相对:${detail.localPosition})"),
      onPanEnd: (detail) => print("拖拽结束速度:${detail.velocity})"),
      onPanCancel: () => print("onPanCancel in my box"),
    );
    return Center(child: show);
  }
}


