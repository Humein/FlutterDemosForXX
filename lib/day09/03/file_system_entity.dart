import 'dart:io';
import 'package:path/path.dart' as path;

main() async {
  var dir = Directory.current.path; //当前项目路径
  var filePath = path.join(dir, "lib", 'day09', '03', "data", "zero.txt"); //使用path拼接路径
  var file = File(filePath);
  if (!await file.exists()) {//如果文件不存在
    file.create(recursive: true); //就递归创建
  }
  print(await FileSystemEntity.isFile(filePath)); //true
  print(await FileSystemEntity.isDirectory(filePath)); //false
  await file.rename(path.dirname(filePath) + path.separator + "zero_one.txt"); //重命名

  var directory=Directory(path.dirname(filePath));
  var stat= await directory.stat();//文件夹的状态
  print(stat.mode);//16877
  print(stat.type);//directory
  print(stat.changed);//2019-11-07 14:32:54.000
  print(stat.modified);//2019-11-07 14:32:54.000
  print(stat.accessed);//2019-11-07 14:31:51.000
  print(stat.size);//102
}
