import 'package:flutter/material.dart';

class ToggleWidget extends StatefulWidget {
  final List<Widget> children; //子组件列表
  final OnToggleCallback onToggleCallback; //回调监听
  final int durationMs; //动画时间
  final TransitionsBuilder transitionsBuilder;//动画构造器

  ToggleWidget({Key key,
      @required this.children,
       @required this.onToggleCallback,
    this.transitionsBuilder= _defaultTransitionsBuilder,
    this.durationMs = 150}) : super(key: key);

  @override
  _ToggleWidgetState createState() => _ToggleWidgetState();
}

//点击切换监听
typedef OnToggleCallback = void Function(int index);

//动画构造器
typedef TransitionsBuilder = Widget Function(BuildContext context, Animation<double> animation,  Widget child);

///默认动画构造器，缩放+透明度动画
Widget _defaultTransitionsBuilder(BuildContext context, Animation<double> animation, Widget child) {
   var tween= TweenSequence<double>([
     TweenSequenceItem<double>(tween: Tween(begin: 1.0, end: 0.5),weight: 1),
     TweenSequenceItem<double>(tween: Tween(begin: 0.5, end: 1.0),weight: 2),
     ]);

   return FadeTransition(
    opacity: tween.animate(CurvedAnimation(parent: animation, curve:Curves.linear,)),
    child: ScaleTransition(
      scale: tween.animate(CurvedAnimation(parent: animation, curve: Curves.linear)),
      child: child,
    ),
  );
}


class _ToggleWidgetState extends State<ToggleWidget> with SingleTickerProviderStateMixin {
  int _position = 0; //当前位置
  int childCount = 0; //孩子的数量
  AnimationController _controller; //动画控制器

  @override
  void initState() {
    childCount = widget.children.length;
    _controller = //创建AnimationController对象
        AnimationController(
            duration: Duration(milliseconds: widget.durationMs), vsync: this)
          ..addStatusListener((s) {
            if (s == AnimationStatus.completed) {//动画结束，进入下一个
              _position++;
              _position %= childCount; //这里实现循环点击
              if (widget.onToggleCallback != null) {
                widget.onToggleCallback(_position);
              }
              setState(() {});
            }
          });
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var child = IndexedStack(//使用IndexStack实现叠合单显
      alignment: Alignment.center,
      index: _position,
      children: widget.children,
    );
    return GestureDetector(
      onTap: _toggle, //检测点击手势
      child: widget.transitionsBuilder(context,_controller,child));
  }

  void _toggle() {
    _controller.reset();
    _controller.forward();
  }
}
