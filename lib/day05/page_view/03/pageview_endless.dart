import 'package:flutter/material.dart';

class PageViewEndless extends StatefulWidget {
  PageViewEndless({this.height,this.width});
  final double height;//组件高
  final double width;//组件宽
  @override
  _PageViewEndlessState createState() => _PageViewEndlessState();
}
class _PageViewEndlessState extends State<PageViewEndless> {
  var width;  var height;
  List<Color> _colors;

  static final _baseOffset = 10000;//初始偏移
  static final _initOffset = 1;//初始索引位

  var _viewportFraction=0.7;//视口缩放比
  var _pageCtrl;//页面控制器


  @override
  void initState() {//初始化颜色
    _colors = [Colors.red, Colors.yellow, Colors.blue, Colors.green, Colors.black];
    _pageCtrl = PageController(  //初始化页面控制器
      viewportFraction: _viewportFraction,//视口缩放比
      initialPage:  _baseOffset+_initOffset,);//初始页面位置
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    width= widget.width??MediaQuery.of(context).size.width;//宽不设置默认为屏宽
    height=widget.height??120.0;//高不设置默认为120
    return Container(  width: width,  height: height,
        child: PageView.builder(//使用PageView
            scrollDirection: Axis.horizontal,//滑动方向
            itemCount: null,//<----条目个数
            controller: _pageCtrl,
            itemBuilder: (ctx, i) => buildChild(_colors, i) ) );//创建条目
  }
  ///创建item
  Widget buildChild(List<Color> colors, int index) {
    index =fixPosition(index, _baseOffset, colors.length);//使用修正后的索引
    var result=Container(  alignment: Alignment.center, color: colors[index],
      child: Text("第$index页",  style: TextStyle(color: Colors.white, fontSize: 30)),
    );
    return result;
  }

  int fixPosition(int realPos, int initPos, int length) { //修正索引
    final int offset = realPos - initPos;//确定起始页
    int result = offset % length;//与长度取模
    return result < 0 ? length + result : result;
  }
}