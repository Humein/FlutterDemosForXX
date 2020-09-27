import 'package:flutter/material.dart';
import 'package:flutter_journey/utils/color_utils.dart';

class GridViewCount extends StatefulWidget {

  @override
  _GridViewGridViewExtentState createState() => _GridViewGridViewExtentState();
}
class _GridViewGridViewExtentState extends State<GridViewCount> {
  List<int> data;

  @override
  void initState() {
    data=List.generate(50, (i)=>i);//生成50个数字
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var count= GridView.count(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.vertical,//滑动方向
        mainAxisSpacing: 10,//主轴间距
        crossAxisSpacing: 10,//交叉轴间距
        crossAxisCount: 8,//条目个数 <----  指定交叉轴一行个数
        childAspectRatio:1/0.618,//交叉轴方向item尺寸/主轴方向item尺寸
        children: data.map((e)=>
            Container(
              alignment: Alignment.center,
              color: ColorUtils.randomColor(),
              child: Text("$e"),)).toList() );
    return count;
  }
}