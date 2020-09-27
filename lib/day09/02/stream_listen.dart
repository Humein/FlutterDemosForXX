main(){
//  listenFish();
  cancelListen();
}


void listenFish() {
  var fishes = ["A鱼", "B鱼", "C鱼"];
  var stream = Stream.fromIterable(fishes);

  stream.listen((fish) => print("拿到了:$fish"),
      onDone: () => print("已完成"), //完成回调
      onError: (error) => print("异常$error"), //错误回调
      cancelOnError: false); //错误时是否取消订阅
}

void cancelListen(){
  var fishes = ["A鱼", "B鱼", "C鱼"];
  var stream = Stream.fromIterable(fishes);
  var you = stream.listen(null);//你订阅了这条小溪

  you.onData((fish){//声明鱼到达你那里你的行为
    print("拿到了$fish");
    if(fish=="B鱼"){//拿到B后，你就取消订阅，走人
      you.cancel();
    }
  });
  you.onError((e)=>print("产生错误$e"));
  you.onDone(()=>print('已全部拿到'));
}