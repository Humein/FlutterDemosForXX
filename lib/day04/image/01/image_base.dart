import 'dart:io';

import 'package:flutter/material.dart';

class ImageBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var assetsImage= Image.asset( "images/icon_head.png", width: 50,  height: 50,);

    var imgPath = "/data/data/com.toly1994.flutter_journey/cache/caver.jpeg";
    var fileImage = Image.file(File(imgPath), width: 200,);

    var imgUrl = "https://user-gold-cdn.xitu.io/2019/7/24/16c225e78234ec26?imageView2/1/w/1304/h/734/q/85/format/webp/interlace/1";
    var netImage = Image.network(
      imgUrl,
      width: 200,);

    var bytes = File(imgPath).readAsBytesSync();
    var memoryImage = Image.memory(bytes,width: 200,);

    return Wrap(
      direction: Axis.vertical,
      spacing: 10,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: <Widget>[assetsImage,fileImage,netImage,memoryImage],
    );
  }
}
