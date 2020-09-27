import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CacheImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var imgUrl = "https://user-gold-cdn.xitu.io/2019/7/24/16c225e78234ec26?imageView2/1/w/1304/h/734/q/85/format/webp/interlace/1";
   var provider= CachedNetworkImage(
      imageUrl: imgUrl,
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );


    return provider;
  }
}
