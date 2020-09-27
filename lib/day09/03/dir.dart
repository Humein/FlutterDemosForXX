import 'dart:io';
import 'package:path/path.dart' as path;

main() async {
  var dir = Directory.current.path; //当前项目路径
  var filePath = path.join(dir, "lib", 'day09', '03'); //使用path拼接路径
  var directory=Directory(filePath);

  directory.list(recursive: true).listen(
      (e)=>print(e.path)
  );

}
