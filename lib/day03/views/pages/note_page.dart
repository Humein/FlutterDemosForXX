import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
    布局button
    如何更新Widgets?
 */

class NotePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: SampleRefreshPage(),
    );
  }
}

/// 如何更新Widgets?
class SampleRefreshPage extends StatefulWidget {
  SampleRefreshPage({Key key}) : super(key: key);
  _SampleRefreshPageState createState() => _SampleRefreshPageState();

}

class _SampleRefreshPageState extends State<SampleRefreshPage>{
  String textToShow = "I hate Flutter";
  bool toggle = true;

  void updateText(){
    setState(() {
      toggle = !toggle;
      textToShow = toggle?"I Love Flutter":"I hate Flutter";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        /// 布局button
        child: FlatButton(
          child: Text(textToShow),
          //点击事件
          onPressed: updateText,
          /// 为什么要设置左右padding，因为如果不设置，那么会挤压文字空间
          padding: EdgeInsets.symmetric(horizontal: 8),
          //按钮颜色
          color: Colors.green,
          //文字颜色
          textColor: Colors.red,
          //圆角
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          /// 配置组件点击区域大小的属性 shrinkWrap：子组件的实际大小。
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      ),
    );
  }

}
