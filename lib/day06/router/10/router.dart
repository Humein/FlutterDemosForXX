import 'package:flutter/material.dart';

import 'detail_pager.dart';
import 'home_page.dart';
import 'router_utils.dart';

class Router {
  static const String detail = 'detail';
  static const String home = '/';
  static const String logo = 'logo';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    print(settings.name);
    switch (settings.name) {//根据名称跳转相应页面
      case Router.detail:
        return Top2BottomRouter(
             child: DetailPager());//获取页面传参

      case Router.home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case Router.logo:
        return MaterialPageRoute(builder: (_) => FlutterLogo());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
