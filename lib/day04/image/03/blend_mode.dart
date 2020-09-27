import 'package:flutter/material.dart';

class FitDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var imgLi = BlendMode.values
        .toList()
        .map((mode) => //批量生成组件
            Column(children: <Widget>[
              Container(
                  margin: EdgeInsets.all(5),
                  width: 60,
                  height: 60,
                  child: Image(
                    image: AssetImage("images/icon_head.png"),
                    color: Colors.blue,
                    colorBlendMode: mode,
                  )),
              Text(mode.toString().split(".")[1])
            ]))
        .toList(); //文字介绍

    return Wrap(
      children: imgLi,
    );
  }
}
