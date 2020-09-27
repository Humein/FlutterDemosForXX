main(){
  test();
}

baseUse(){
  List<String> languages = ['Java', 'Dart', 'Python', 'C++', 'Kotlin'];
  print(languages[0]); //Java 访问索引为0的元素
  languages.add("JavaScript");//添加元素
  print(languages.length);//6 数组长度
  languages.removeAt(1);//移除第一个元素
  languages.insert(3, "PHP");// 定点插入
  print(languages);//[Java, Python, C++, PHP, Kotlin, JavaScript]
  print(languages.getRange(3, 5));//(PHP, Kotlin)  获取指定访问的元素
  print(languages.sublist(2, 4)); //[C++, PHP] 截取
  print(languages.join("!")); //Java!Python!C++!PHP!Kotlin!JavaScript
  print(languages.isEmpty);//false  获取指定访问的元素是否为空
  print(languages.contains("Ruby"));//false  是否包含
  languages.clear();//清空
}

test(){
  List<String> strNum = ['11', '23', '34', '24', '65'];
  var intNum= strNum.map((String str)=> int.parse(str)).toList();
  print(intNum);//[11, 23, 34, 24, 65]

  var bigThan30= intNum.where((int num)=>num>30).toList();
  print(bigThan30);//[34, 65]

  var parser=[0,100,...intNum,30];
  print(parser);//[0, 100, 11, 23, 34, 24, 65, 30]

  bool flag=bigThan30.length >= 3;
  var chooseLi=[if(!flag) 666,...parser,if(flag) 555 else 55];
  print(chooseLi);//[666, 0, 100, 11, 23, 34, 24, 65, 30, 55]
}