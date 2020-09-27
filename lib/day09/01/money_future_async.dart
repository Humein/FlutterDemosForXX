import 'dart:io';

main(){
  print("小明想要10元买零食: ${DateTime.now()}");
  Mom.getMoney(10.0).then((money){//<---3.在异步的then
    XiaoMing.buyFood(money);
  });
  print("小明写作业: ${DateTime.now()}");
}

class Mom{//妈妈
  static Future<Money>  getMoney(value) {//<---1.通过返回Future<Money> 对象表示钱是未来的
    print("妈妈现在没有零钱，我先去买菜，回来给你: ${DateTime.now()}");
    return Future((){//<---2.创建Future对象来完成耗时任务
      sleep(Duration(seconds: 5));//模拟耗时--买菜---
      print("妈妈回来了，给你零钱: ${DateTime.now()}");
      return Money(value);
    }); }
}

class XiaoMing{//小明
  static buyFood(Money money){
    if(money.value==10.0){
      print("小明买到了零食:"
          "${DateTime.now()}");
    }
  }
}

class Money{//钱
  double value;
  Money(this.value);
}