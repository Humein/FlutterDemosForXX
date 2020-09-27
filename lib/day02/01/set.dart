main(){
  Set<String> languages = {'Java', 'Dart', 'Python', 'C++', 'Kotlin',"Java"};
  print(languages);//{Java, Dart, Python, C++, Kotlin}
  print(languages.add('Java'));//false 表示添加不成功
  print(languages.add('JavaScript'));//true
  print(languages.contains("Dart"));//true 是否存在
  languages.remove("JavaScript");
  print(languages.toList());//列表化  //[Java, Dart, Python, C++, Kotlin]
  languages.forEach((e){print(e);});//遍历
  print({1,2,3,4}.difference({2,3,6}));//{1, 4} 不同于
  print({1,2,3,4}.union({2,3,6}));//{1, 2, 3, 4, 6} 并集
  print({1,2,3,4}.intersection({2,3,6}));//{2, 3} 交集
}