import 'package:flutter/material.dart';
import 'package:flutter_journey/day07/06/toggle_widget.dart';
import 'package:flutter_journey/iconfont.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var icons = [TolyIcon.play_loop, TolyIcon.play_one, TolyIcon.play_random];
    var show = ToggleWidget(
      durationMs: 350, //动画时长
      children: icons //子组件
          .map((e) => Icon(e, size: 40, color: Colors.deepOrangeAccent))
          .toList(),
      onToggleCallback: (index) => print(index), //切换时回调
      transitionsBuilder: rotateTransitionsBuilder2,
    );
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('主页'),
            ),
            body: Center(child: show)));
  }

  Widget rotateTransitionsBuilder(
      BuildContext context, Animation<double> animation, Widget child) {
    var tween = TweenSequence<double>([
      TweenSequenceItem<double>(tween: Tween(begin: 1.0, end: 0.5), weight: 1),
      TweenSequenceItem<double>(tween: Tween(begin: 0.5, end: 1.0), weight: 2),
    ]);

    var tweenRotate = TweenSequence<double>([
      TweenSequenceItem<double>(tween: Tween(begin: 1.0, end: 0.9), weight: 1),
      TweenSequenceItem<double>(tween: Tween(begin: 0.9, end: 1.0), weight: 2),
    ]);

    return ScaleTransition(
      scale: tween.animate(CurvedAnimation(
        parent: animation,
        curve: Curves.linear,
      )),
      child: FadeTransition(
        opacity: tween
            .animate(CurvedAnimation(parent: animation, curve: Curves.linear)),
        child: RotationTransition(
          turns: tweenRotate.animate(
              CurvedAnimation(parent: animation, curve: Curves.linear)),
          child: child,
        ),
      ),
    );
  }

  Widget rotateTransitionsBuilder2(
      BuildContext context, Animation<double> animation, Widget child) {
    var tween = TweenSequence<double>([
      TweenSequenceItem<double>(tween: Tween(begin: 1.0, end: 0.5), weight: 1),
      TweenSequenceItem<double>(tween: Tween(begin: 0.5, end: 1.0), weight: 2),
    ]);

    return ScaleTransition(
      scale: tween.animate(CurvedAnimation(
        parent: animation,
        curve: Curves.linear,
      )),
      child: FadeTransition(
        opacity: tween
            .animate(CurvedAnimation(parent: animation, curve: Curves.linear)),
        child: RotationTransition(
          turns: Tween(begin: 1.0, end: 0.0).animate(
              CurvedAnimation(parent: animation, curve: Curves.linear)),
          child: child,
        ),
      ),
    );
  }
}
