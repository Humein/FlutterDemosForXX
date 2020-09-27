import 'package:flutter/material.dart';

typedef FunNum1 = Function(double t); //一参函数

class MathRunner extends StatefulWidget {
  MathRunner({Key key, this.child, this.x, this.y, this.reverse = true})
      : super(key: key);
  final Widget child; //组件
  final FunNum1 x; //x 参数方程
  final FunNum1 y; //y 参数方程
  final bool reverse; //是否翻转运动
  @override
  _MathRunnerState createState() => _MathRunnerState();
}

class _MathRunnerState extends State<MathRunner>
    with SingleTickerProviderStateMixin {
  AnimationController _controller; //控制器
  Animation animationX; //x 方向动画器
  double _x = -1.0; //x 坐标
  double _y = 0; //y 坐标
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animationX = Tween(begin: -1.0, end: 1.0).animate(_controller)
      ..addListener(() => setState(() {
            //使用动画器改变坐标
            _x = widget.x(animationX.value);
            _y = widget.y(animationX.value);
          }));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose(); //缩放动画器
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      GestureDetector(
        onTap: () => _controller.repeat(
            reverse: widget.reverse
        ), //运行
        child: Container(
          child: Align(
            alignment: Alignment(_x, _y),
            child: widget.child,
          ),
        ),
      );
}
