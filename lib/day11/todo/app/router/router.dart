import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_journey/day11/todo/bloc/authentic/bloc.dart';
import 'package:flutter_journey/day11/todo/bloc/login/bloc.dart';
import 'package:flutter_journey/day11/todo/bloc/register/bloc.dart';
import 'package:flutter_journey/day11/todo/pages/register_page.dart';

import 'router_utils.dart';

class Router {
  static const String register = 'logo';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //根据名称跳转相应页面
      case Router.register:
        return Right2LeftRouter(
            child: BlocProvider(
              create: (context) => RegisterBloc(
                userRepository: BlocProvider.of<AuthenticBloc>(context).userRepository,
              ),
              child: RegisterPage(),
            )); //获取页面传参
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
