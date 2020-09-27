import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:gbk_codec/gbk_codec.dart';
import 'package:path/path.dart' as path;

main() {

//  writePoem();
//  openReadPoem();
  openReadPoemProgress();
//  openReadCancel();
//  openReadTxt();
//  openWriteFile();
//  openFileTest();
}

openReadPoem() async {
  var dir = Directory.current.path;
  var filePath = path.join(dir, "lib", 'day09', '03', "data", "IMG_20170130_161817.jpg");
  var file = File(filePath);
  Stream fileStream= file.openRead();//获取流
  fileStream.listen((bytes)=>print(bytes.length));//监听流
}


openReadPoemProgress() async {
  var dir = Directory.current.path;
  var filePath = path.join(dir, "lib", 'day09', '03', "data", "IMG_20170130_161817.jpg");
  var file = File(filePath);

  int length = await file.length();//文件大小
  var count=0;//当前字节数
  String symbol = "┃";//模拟进度条

  Stream fileStream= file.openRead();//获取流
  fileStream.listen((bytes){//监听流
    count = count + bytes.length;//进度百分比
    double num = (count*100)/length;
    DateTime time =DateTime.now();
    print("[${time.hour}点:${time.second}秒:${time.millisecond}毫秒]"//输出进度
        "${symbol*(num ~/ 2)}[${num.toStringAsFixed(2)}%]");
  });
}

openReadTxt() async {
  var dir = Directory.current.path;
  var filePath = path.join(dir, "lib", 'day09', '03', "data", "钢铁是怎样炼成的.txt");
  var file = File(filePath);
  Stream fileStream= file.openRead(0,200);//获取流
  fileStream.transform( StreamTransformer<List<int>, String>.fromHandlers(
      handleData: (List<int> data, EventSink<String> sink){
        sink.add(gbk_bytes.decode(data));
      }
  )).
  listen((data){//监听流
    print(data);
  });
}


openReadCancel() async {
  var dir = Directory.current.path;
  var filePath = path.join(dir, "lib", 'day09', '03', "data", "钢铁是怎样炼成的.txt");
  var file = File(filePath);
  Stream fileStream= file.openRead();//获取流
  var listener= fileStream.listen(null);
  listener.onData((bytes){
    if (gbk_bytes.decode(bytes).contains("保尔付了车钱")) {
      listener.cancel();
    }
    print(gbk_bytes.decode(bytes));
  });
}

openWriteFile() async {
  var dir = Directory.current.path;
  var filePath = path.join(dir, "lib", 'day09', '03', "data", "IOSink.txt");
  var file = File(filePath);
  IOSink fileSink= file.openWrite();//sink
  fileSink.write(Point(3, 4));//写入对象
  fileSink.writeln("Hello World");
  fileSink.writeAll(["Java","Dart","kotlin","Swift"],"~");//写入迭代对象
  fileSink.add([233,155,182]);//写入字节数组
  fileSink.writeCharCode(66);//写入字节
  fileSink.close();//关闭
}

void openFileTest() async {
  var dir = Directory.current.path;
  var filePath = path.join(dir, "lib", 'day09', '03', "data", "zero_one.txt");
  var file = File(filePath);
  var raf = await file.open(mode: FileMode.append);//以添加的模式打开
  await raf.setPosition(0);//设置游标位置
  print(await raf.position());//查看游标位置
  print(await raf.read(19));//读取18个字节
  print(await raf.position());//查看游标位置
  await raf.writeString("杰");//在当前游标位
}