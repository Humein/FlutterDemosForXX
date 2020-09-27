import 'package:flutter/material.dart';

class CenterSliceDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var img = Image.asset( "images/right_chat.png",
      centerSlice: Rect.fromLTRB(9, 27, 60, 27+1.0),fit: BoxFit.fill,);//可缩放区域
    var show = Container( width: 300,   height: 100,  child: img,);

    return show;
  }
}
