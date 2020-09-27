import 'dart:async';

main() {
  pushFish();
}

void pushFish() {
  StreamController<String> controller = StreamController(
    onListen: () => print("onListen"),
    onCancel: () => print("onCancel"),
  );

  StreamSubscription you =
      controller.stream.listen((value) => print('监听到 $value游到你身边'));
  controller.sink.add("A鱼");
  controller.sink.add("B鱼");

  StreamSubscription youFriend =
      controller.stream.listen((value) => print('监听到 $value游到你朋友身边'));
  controller.sink.add("C鱼");
  controller.sink.add("D鱼");
  controller.close();
//  you.cancel();
//  youFriend.cancel();
}
