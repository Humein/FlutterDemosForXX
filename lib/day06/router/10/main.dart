import 'package:flutter/material.dart';

import '../goods_widget.dart';
import 'detail_pager.dart';
import 'home_page.dart';
import 'router.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: Router.generateRoute,//路由生成器
        initialRoute: Router.home,//初始路由
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('主页'),
          ),
          body: HomePage(),
        ),
    );
  }
}
