import 'dart:io';

main(){
//  Water(0).heat().then((water) {
//    print('水已经烧开,现在温度:'
//        '${water.temperature},开始冲水');
//  });
  heat();
  print("扫地");
}


class Water{
  double temperature;
  Water(this.temperature);
  Future<Water> heat() {
    print("打开烧水开关");
    return Future<Water> ((){
      //模拟烧水过程(耗时操作)
      sleep(Duration(seconds: 3));
      temperature=100;
      return this;
    });
  }
}

Future<Water> heat() async {
  var water = await Water(0).heat();
  print('水已经烧开,现在温度:${water.temperature},开始冲水');
  return water;
}