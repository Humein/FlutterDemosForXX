import 'dart:io';

main() {
  print("小明想要10元买零食: ${DateTime.now().toString()}");
  buy();
  print("小明写作业: ${DateTime.now().toString()}");
}
buy() async{//异步执行购买方法
  var money =await Mom.getMoney(10.0); //使用 await 标识等待这个未来的对象，让程序继续向下执行
  XiaoMing.buyFood(money);
}

class Mom {
  //妈妈
  static Future<Money> getMoney(value) {
    print("妈妈现在没有零钱，我先去买菜，回来给你: ${DateTime.now()}");
    return Future(() {
      sleep(Duration(seconds: 5)); //模拟耗时--买菜---
      print("妈妈回来了，给你零钱: ${DateTime.now()}");
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
