import 'dart:io';

main(){
  print("小明想要10元买零食: ${DateTime.now()}");
  Money money=Mom.getMoney(10.0);
  XiaoMing.buyFood(money);
  print("小明写作业: ${DateTime.now()}");
}
class Mom{//妈妈
  static Money getMoney(value) {
    print("妈妈现在没有零钱，我先去买菜，回来给你:${DateTime.now().toString()}");
    sleep(Duration(seconds: 5));//模拟耗时--买菜---
    print("妈妈回来了，给你零钱: ${DateTime.now()}");
    return Money(value);
  }}

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