main(){
  String name = '张风捷特烈';//支持单引号
  String proverbs ="'海的彼岸有我未曾见证的风采'";//双引号
  String poem=""" //支持三引号
>《零境》
    ----张风捷特烈
飘缥兮飞烟浮定，
渺缈兮皓月风清。
纷纷兮初心复始，
繁繁兮万绪归零。
     2017.11.7 改  <br/>
  """;
  print('${name}\n$proverbs\n$poem');//字符串中使用变量

  String url = "https://github.com/toly-flutter ";
  print(url.split("://")[0]);//https   字符串切割
  print(url.substring(4,9));//s://g   字符串截取 [起始索引,结束索引)
  print(url.codeUnitAt(4));//115     索引处字符的UTF-16码
  print(url.startsWith("https"));//true    是否以指定字符开头
  print(url.endsWith(" "));//true    是否以指定字符结尾
  print(url.indexOf("github"));//8   指定字符的索引处
  print(url.contains("flutter"));//true   是否包含指定字符
  print(url.length);//32      长度
  print(url.replaceFirst("t", "T"));//替换第一个
  print(url.replaceAll("t", "T"));//全部替换
}