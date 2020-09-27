import 'dart:io';
import 'package:path/path.dart' as path;
main(){
  var dir = Directory.current.path;//当前项目路径
  var fileDirPath= path.join(dir,'day09','03',"data","zero.txt");//使用path拼接路径
  print(fileDirPath);
  // /Volumes/coder/Projects/Flutter/flutter_journey/flutter_journey/day09/03/data/zero.txt
  print(path.extension(fileDirPath));//拓展名 .txt
  print(path.basename(fileDirPath));//文件名 zero.txt
  print(path.basenameWithoutExtension(fileDirPath));//文件名无拓展名 zero
  print(path.dirname(fileDirPath));
  // /Volumes/coder/Projects/Flutter/flutter_journey/flutter_journey/day09/03/data
  print(path.separator);//分隔符 /
}