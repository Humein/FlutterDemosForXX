
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  _MyHomePageState() {
    print("_MyHomePageState--构造函数");
  }

  @override
  void initState() {
    print("MyHomePage--initState");
    super.initState();
  }

  @override//当State对象的依赖发生变化时会被调用；
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("MyHomePage--didChangeDependencies");
  }


  @override//组件状态改变时候调用，可能会调用多次
  void didUpdateWidget(MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("MyHomePage--didUpdateWidget");

  }

  @override//
  void reassemble() {
    print("MyHomePage--reassemble");
    super.reassemble();
  }

  @override
  Widget build(BuildContext context) {
    print("MyHomePage--build $_counter");
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:',),
        Text('${_counter}', style: Theme.of(context).textTheme.display1),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  @override//当State对象从树中被移除时，会调用此回调。
  void deactivate() {
    print("MyHomePage--deactivate");
    super.deactivate();
  }

  @override//当State对象从树中被永久移除时调用；通常在此回调中释放资源
  void dispose() {
    print("MyHomePage--dispose");
    super.dispose();
  }
}