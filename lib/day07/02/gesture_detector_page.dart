import 'package:flutter/material.dart';

class GestureDetectorTest extends StatefulWidget {
  @override
  _GestureDetectorTestState createState() => _GestureDetectorTestState();
}

class _GestureDetectorTestState extends State<GestureDetectorTest> {

  @override
  Widget build(BuildContext context) {

    var show = GestureDetector(
        child: Container( color: Colors.cyanAccent, width: 100, height: 100,),
        onTap: () {  //点击回调
          print("onTap in my box");
        },
        onTapDown: (detail) =>//按下回调
          print('onTapDown: 全局坐标:${detail.globalPosition}--相对坐标:${detail.localPosition}'),
        onTapUp: (detail) =>//抬起回调
          print('onTapUp: 全局坐标:${detail.globalPosition}--相对坐标:${detail.localPosition}'),
        onTapCancel: () =>print("onTapCancel in my box"), //取消回调
        onDoubleTap: () => print("onDoubleTap in my box"),//双击回调
        onLongPress: () => print("onLongPress in my box"),//长按回调
        onLongPressUp: () => print("onLongPressUp in my box")//长按抬起回调
    );
    return Center(child: show);
  }
}


