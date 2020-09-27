import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as path;

main() {
  writePoem();

  readStringPoem();
  readLinesPoem();
  readBytePoem();
}

writePoem() async {
  var dir = Directory.current.path; //当前项目路径
  var filePath =
      path.join(dir, "lib", 'day09', '03', "data", "zero_one.txt"); //使用path拼接路径
  var file = File(filePath);
  var content =
  """
  《零境》张风捷特烈
飘缥兮飞烟浮定，
渺缈兮皓月风清。
纷纷兮初心复始，
繁繁兮万绪归零。
     2017.11.7改
  """;
  await file.writeAsString(content);
}


readStringPoem() async {
  var dir = Directory.current.path;
  var filePath =
  path.join(dir, "lib", 'day09', '03', "data", "zero_one.txt");
  var file = File(filePath);
  var content = await file.readAsString();
  print(content);
}

readLinesPoem() async {
  var dir = Directory.current.path; //当前项目路径
  var filePath =
  path.join(dir, "lib", 'day09', '03', "data", "zero_one.txt");
  var file = File(filePath);
  var content = await file.readAsLines();
  print(content);
}

readBytePoem() async {
  var dir = Directory.current.path; //当前项目路径
  var filePath =
  path.join(dir, "lib", 'day09', '03', "data", "zero_one.txt");
  var file = File(filePath);
  var content = await file.readAsBytes();
  print(content);
}
