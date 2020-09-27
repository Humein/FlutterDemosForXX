import 'package:flutter/material.dart';

class PageViewSimple extends StatefulWidget {
  PageViewSimple({this.height,this.width});
  final double height;//组件高
  final double width;//组件宽
  @override
  _PageViewSimpleState createState() => _PageViewSimpleState();
}
class _PageViewSimpleState extends State<PageViewSimple> {
  var width;  var height;
  List<Color> _colors;

  var _viewportFraction=0.7;//视口缩放比
  var _pageCtrl;//页面控制器
  var _initOffset= 1;//页面位置

  @override
  void initState() {//初始化颜色
    _colors = [Colors.red, Colors.yellow, Colors.blue, Colors.green, Colors.black];
    _pageCtrl = PageController(  //初始化页面控制器
      viewportFraction: _viewportFraction,//视口缩放比
      initialPage: _initOffset,);//初始页面位置
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    width= widget.width??MediaQuery.of(context).size.width;//宽不设置默认为屏宽
    height=widget.height??120.0;//高不设置默认为120
    return Container(  width: width,  height: height,
        child: PageView.builder(//使用PageView
            scrollDirection: Axis.horizontal,//滑动方向
            itemCount: _colors.length,//条目个数
            controller: _pageCtrl,
            itemBuilder: (ctx, i) => buildChild(_colors, i) ) );//创建条目
  }
  ///创建item
  Widget buildChild(List<Color> colors, int index) {
    var result=Container(  alignment: Alignment.center, color: colors[index],
      child: Text("第$index页",  style: TextStyle(color: Colors.white, fontSize: 30)),
    );
    return result;
  }
}