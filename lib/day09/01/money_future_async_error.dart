import 'dart:io';

main() {
  print("小明想要10元买零食: ${DateTime.now()}");
  Mom.getMoney(10.0).then((money) {
    //<---3.在异步的then
    XiaoMing.buyFood(money);
  }).catchError((e) {
    //<---通过catchError来捕捉未来可能出现的异常
    print(e);
    print("好吧，我不吃零食了");
  });
  print("小明写作业: ${DateTime.now()}");
}

class Mom {
  //妈妈
  static Future<Money> getMoney(value) {
    print("妈妈现在没有零钱，我先去买菜，回来给你: ${DateTime.now()}");
    return Future(() {
      sleep(Duration(seconds: 5)); //模拟耗时--买菜---
      print("妈妈回来了，给你零钱: ${DateTime.now()}");
      throw Exception("妈妈的钱包被偷了"); //<---在此抛个异常
      return Money(value);
    });
  }
}

class XiaoMing {
  //小明
  static buyFood(Money money) {
    if (money.value == 10.0) {
      print("小明买到了零食:"
          "${DateTime.now()}");
    }
  }
}

class Money {
  //钱
  double value;

  Money(this.value);
}
