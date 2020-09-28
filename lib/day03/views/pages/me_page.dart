import 'package:flutter/material.dart';

/**
 * 如何在布局中添加或删除组件？
*/

// 程序唯一入口
//void main() {
//  runApp(MePage());
//}



class MePage extends StatelessWidget {

  /// APP 样式
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Sample App',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: SampleAppPage(),
//    );
//  }

  /// 页面 样式
  @override
  Widget build(BuildContext context) {
//    return Center(child:Text("我的"));
    return Center(
      child: SampleAppPage(),
    );
    return Scaffold(
      body: Center(
        child: SampleAppPage(),
      ),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  // Default value for toggle
  bool toggle = true;
  void _toggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  _getToggleChild() {
    if (toggle) {
      return Text('Toggle One');
    } else {
      return MaterialButton(onPressed: () {}, child: Text('Toggle Two'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: Center(
        child: _getToggleChild(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggle,
        tooltip: 'Update Text',
        child: Icon(Icons.update),
      ),
    );
  }
}



