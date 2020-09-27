import 'package:flutter/material.dart';
import 'package:flutter_journey/day12/beans/content_item.dart';
import '../../../app/router.dart';


class PlugsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ContentItem> data = [];
    data.add(ContentItem(title: "权限与路径", route: Router.path,color: Colors.blue));
    data.add(ContentItem(title: "音乐播放", route: Router.music_play,color: Colors.blue));
    data.add(ContentItem(title: "视频播放", route: Router.video_play,color: Colors.blue));
    data.add(ContentItem(title: "图片拾取器", route: Router.image_picker,color: Colors.blue));
    data.add(ContentItem(title: "WebView", route: Router.web_view,color: Colors.blue));

    return Container(
      child: GridView.builder(
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //网格代理：定交叉轴数目
          crossAxisCount: 3, //条目个数
          mainAxisSpacing: 5, //主轴间距
          crossAxisSpacing: 5, //交叉轴间距
          childAspectRatio: 1 / 0.618, //交叉轴方向item尺寸/主轴方向item尺寸
        ),
        itemBuilder: (_, int position) => buildItem(context, data[position]),
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.vertical, //滑动方向
      ),
    );
  }


  Widget buildItem(BuildContext context, ContentItem item) {
    return Card(
        elevation: 3,
        child: InkWell(
          onTap: ()=> Navigator.of(context).pushNamed(item.route),
          child: Container(
              alignment: Alignment.center,
              color: item.color,
              child: Text(item.title,style: TextStyle(fontSize: 18,color: Colors.white),),),
        ),
      );
  }
}
