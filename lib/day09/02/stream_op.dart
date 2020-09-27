import 'dart:async';

main() {
  pushFish();
}

void pushFish() {
  StreamController controller = StreamController();
  controller.add("A鱼");
  controller.add("B鱼");
  controller.add("C鱼");
  controller.stream
      .map((fish) {
        if (fish == "D鱼") {
          print("D鱼已经被我吃完了");
          return "D鱼的骨头";
        }
        return fish;
      })
      .skip(2) //扔掉前两个
      .take(3) //最终只能拿两个
      .listen((fish) => print("你拿到了$fish"));
  controller.add("D鱼");
  controller.add("E鱼");
  controller.add("F鱼");
  controller.close();
}
