import 'dart:async';

main(){
  pushFish();
}


void pushFish(){
  StreamController controller = StreamController(
    onListen:()=>print("onListen"),// 流被监听时回调
    onPause:()=>print("onPause"),// 流被暂停时回调
    onResume:()=>print("onResume"),// 流被恢复时回调
    onCancel:()=>print("onCancel"),// 流被取消时回调
  );// 管理员

  controller.add("A鱼");//首先加一批
  controller.add("B鱼");
  controller.add("C鱼");
  print("第一波已加完");
  controller.stream.listen((fish) => print("拿到了$fish"));//监听

  controller.add("D鱼");//再加一批
  controller.add("E鱼");
  controller.add("F鱼");
  controller.close();//管理员走人
}