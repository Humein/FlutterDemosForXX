import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/** http://flutterexamples.com/#center
    如何更新Widgets(button)? -> Center/Padding/SizedBox 等布局
    如何构建自定义Widgets?
    Align Container
    Row 和 Flexible
    Column 和 Flexible
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

  /// 简单布局更新Widgets?  Center/Padding/SizedBox
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
////        body: Center(
////        body: Padding(
////        body: SizedBox(
//        body: Container(
//        padding: EdgeInsets.fromLTRB(124, 132, 24, 32), // Padding- 改变Button的位置
////        width: 100.0, // 和 padding 一起使用会有问题
////        height: 100.0, // SizedBox
//        /// 布局button
//        child: FlatButton(
//          child: Text(textToShow),
//          //点击事件
//          onPressed: updateText,
//          /// 为什么要设置左右padding，因为如果不设置，那么会挤压文字空间
////          padding: EdgeInsets.symmetric(horizontal: 8),
//          /// 配合Padding 可以改变button 大小
//          padding: const EdgeInsets.all(40.0),
//          //按钮颜色
//          color: Colors.green,
//          //文字颜色
//          textColor: Colors.red,
//          //圆角
//          shape: RoundedRectangleBorder(
//            borderRadius: BorderRadius.circular(5),
//          ),
//          /// 配置组件点击区域大小的属性 shrinkWrap：子组件的实际大小。
//          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//        ),
//      ),
//    );
//  }

  /// Row 以及配合 Padding 进行布局
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Container(
//        child:
//          Padding(padding: EdgeInsets.fromLTRB(24, 232, 24, 32),
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              mainAxisSize: MainAxisSize.max,
//              crossAxisAlignment: CrossAxisAlignment.center,
//              children: <Widget>[
//                Container(
//                  padding: const EdgeInsets.all(0.0),
//                  color: Colors.cyanAccent,
//                  width: 80.0,
//                  height: 80.0,
//                ),
//                Container(
//                  padding: const EdgeInsets.all(0.0),
//                  color: Colors.blueAccent,
//                  width: 80.0,
//                  height: 80.0,
//                ),
//                Container(
//                  padding: const EdgeInsets.all(0.0),
//                  color: Colors.orangeAccent,
//                  width: 80.0,
//                  height: 80.0,
//                ),
//              ],
//            ),
//          )
//      ),
//      );
//
//  }


  /// Column 基本和 Row 一样的
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Row(),
//
//    );
//  }




  /// Align Container
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.grey,
//      body: Container(
//        margin: EdgeInsets.only(top: 100, left: 22,right: 22),
//        color: Colors.cyan,
//        width: 400,
//        height: 200,
//        child: Padding(padding: EdgeInsets.only(top: 40,left: 10),
//          child: Row(
//            children: [
//              Align(
//                  alignment: Alignment.topLeft,
//                  child: new Container(
//                    margin: EdgeInsets.only(right: 40),
//                    padding: const EdgeInsets.all(0.0),
//                    color: Colors.cyanAccent,
//                    width: 80.0,
//                    height: 80.0,
//                  )),
//              Align(
//                  alignment: Alignment.topLeft,
//                  child: new Container(
//                    margin: EdgeInsets.only(top: 20),
//                    padding: const EdgeInsets.all(0.0),
//                    color: Colors.red,
//                    width: 80.0,
//                    height: 80.0,
//                  )),
//            ],
//          )
//        ),
//      ),
//    );
//  }


  /// Row/Column 和 Flexible/Expanded
//  @override
//  Widget build(BuildContext context) {
//    return new Row(
//      mainAxisAlignment: MainAxisAlignment.center,
//      mainAxisSize: MainAxisSize.max,
//      crossAxisAlignment: CrossAxisAlignment.center,
//      children: <Widget>[
//        Flexible(
//          child: new CustomButton("heolll2"),
//          flex: 2,
//        ),
//        Flexible(
//          child: new CustomButton("heolll10"),
//          flex: 3,
//        ),
//        Flexible(
//          child: new CustomButton("heolll2"),
//          flex: 2,
//        ),
//      ],
//    );
//  }

  /// Stack 配合 Positioned 使用
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//          title: Text('PositionedDemo'), backgroundColor: Colors.blue[400]),
//      body: Container(
//        color: Colors.orange[100],
//        width: MediaQuery.of(context).size.width,
//        height: MediaQuery.of(context).size.height,
//        margin: EdgeInsets.all(15),
//        child: Stack(
//          children: <Widget>[
//            Positioned(
//              child:MaterialButton(
//                minWidth: 100,
//                onPressed: () {},
//                color: Colors.greenAccent,
//              ),
//              right:10,
//              top: 10,
//            ),
//            Positioned(
//              child:MaterialButton(
//                minWidth: 100,
//                height: 40,
//                onPressed: () {},
//                color: Colors.red,
//              ),
//              left: MediaQuery.of(context).size.width / 2 * 0.8,
//              top: MediaQuery.of(context).size.height / 2 * 0.7,
//            ),
//            Positioned(
//              child:MaterialButton(
//                minWidth: 100,
//                onPressed: () {},
//                color: Colors.yellow,
//              ),
//              left: 10,
//              bottom: 10,
//            ),
//          ],
//        ),
//      ),
//    );
//  }

  /// Positioned 配合 ConstrainedBox
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: ConstrainedBox(
//        constraints: BoxConstraints.tight(Size(double.infinity, 256)),
//        child: Stack(
//          alignment: AlignmentDirectional.center,
//          children: <Widget>[
//            Positioned(
//              top: 0.0,
//              child: Icon(Icons.calendar_today,
//                  size: 128.0, color: Colors.lightBlueAccent),
//            ),
//            Positioned(
//                top: 44,
//                right: 120,
//                child: CircleAvatar(radius: 16, backgroundColor: Colors.red)),
//          ],
//        ),
//      ),
//    );
//  }

//  /// Wrap 类似热门tag布局
//  @override
//  Widget build(BuildContext context) {
//    return Wrap(
//      spacing: 4.0, // gap between lines
//      children: <Widget>[
//        Chip(
//          avatar: CircleAvatar(backgroundColor: Colors.orange, child: Text('C', style: TextStyle(color: Colors.white))),
//          label: Text('Cupcake'),
//          backgroundColor: Colors.white,
//        ),
//        Chip(
//          avatar: CircleAvatar(backgroundColor: Colors.cyanAccent, child: Text('D', style: TextStyle(color: Colors.black45))),
//          label: Text('Donutdddddddd'),
//          backgroundColor: Colors.white,
//        ),
//        Chip(
//          avatar: CircleAvatar(backgroundColor: Colors.indigoAccent, child: Text('E', style: TextStyle(color: Colors.white))),
//          label: Text('Eclair'),
//          backgroundColor: Colors.white,
//        ),
//        Chip(
//          avatar: CircleAvatar(backgroundColor: Colors.yellowAccent, child: Text('F', style: TextStyle(color: Colors.black45))),
//          label: Text('Froyo'),
//          backgroundColor: Colors.white,
//        ),
//        Chip(
//          avatar: CircleAvatar(backgroundColor: Colors.yellowAccent, child: Text('F', style: TextStyle(color: Colors.black45))),
//          label: Text('Froyo'),
//          backgroundColor: Colors.white,
//        ),
//      ],
//    );
//  }

  /// ListView
//  @override
//  Widget build(BuildContext context) {
//    List<String> names = ['Alpha', 'Beta', 'Cupcake', 'Donut', 'Eclair',
//      'Froyo', 'Ginger bread', 'Honey comb', 'Ice cream sandwich', 'Jelly bean',
//      'Kitkat', 'Lollipop', 'Marshmallow', 'Nougat', 'Oreo', 'Pie'
//    ];
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      home: Scaffold(
////          appBar: AppBar(title: Text('ListView')),
//          body: Center(
//            child:
//            ListView.builder(
//                itemCount: names.length,
//                itemBuilder: (BuildContext context, int position) {
//                  var name = names[position];
//                  return ListTile(title: Text(name));
//                }),
//          )),
//    );
//  }


  /// GridView 类似 UIcollection
//   @override
//   Widget build(BuildContext context) {
//    return GridView(
//        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//            crossAxisCount: 4, //横轴三个子widget
//            childAspectRatio: 1.0, //宽高比为1时，子widget
//            crossAxisSpacing: 10,
//        ),
//        children:<Widget>[
//          Icon(Icons.ac_unit),
//          Icon(Icons.airport_shuttle),
//          Icon(Icons.all_inclusive),
//          Icon(Icons.beach_access),
//          Icon(Icons.cake),
//          Icon(Icons.free_breakfast)
//        ]
//    );
//  }

  /// CustomScrollView
  @override
  Widget build(BuildContext context) {
    //因为本路由没有使用Scaffold，为了让子级Widget(如Text)使用
    //Material Design 默认的样式风格,我们使用Material作为本路由的根。
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          //AppBar，包含一个导航栏
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Demo'),
              background: Image.asset(
                "./images/avatar.png", fit: BoxFit.cover,),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: new SliverGrid( //Grid
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, //Grid按两列显示
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  //创建子widget
                  return new Container(
                    alignment: Alignment.center,
                    color: Colors.cyan[100 * (index % 9)],
                    child: new Text('grid item $index'),
                  );
                },
                childCount: 20,
              ),
            ),
          ),
          //List
          new SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  //创建列表项
                  return new Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: new Text('list item $index'),
                  );
                },
                childCount: 50 //50个列表项
            ),
          ),
        ],
      ),
    );
  }
}


///构建自定义Widgets - CustomButton ，并在构造器中传入它的 label？那就组合 RaisedButton 和 label，而不是扩展 RaisedButton。
class CustomButton extends StatelessWidget {
  final String label;
  CustomButton(this.label);

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(onPressed: () {}, child: new Text(label));
  }
}
