import 'package:flutter/material.dart';
import 'package:flutter_journey/utils/color_utils.dart';

class FitDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var imgLi = BoxFit.values
        .toList()
        .map((mode) => //批量生成组件
            Column(children: <Widget>[
              Container(
                  margin: EdgeInsets.all(5),
                  width: 150,
                  height: 60,
                  color: ColorUtils.randomColor(),
                  child: Image(
                    image: AssetImage("images/wy_30x20.jpg"),
//                    image: AssetImage("images/wy_300x200.jpg"),
                    fit: mode,
                  )),
              Text(mode.toString().split(".")[1])
            ]))
        .toList(); //文字介绍

    return Wrap(
      children: imgLi,
    );
  }
}
