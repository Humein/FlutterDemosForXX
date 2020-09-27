main(){
  listFish();
//  streamFish();
}

void listFish() {
  var fishes = ["A鱼", "B鱼", "C鱼"];
  fishes.forEach((e){
    print(e);
  });
  print("====");
}

void streamFish() {
  var fishes = ["A鱼", "B鱼", "C鱼"];
  var stream =Stream.fromIterable(fishes);
  stream.forEach((e){
    print(e);
  });
  print("====");
}