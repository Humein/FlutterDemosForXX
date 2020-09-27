void main() {
  String str = """
  class Data {
  static final en = {
    "title": "Flutter Demo Home Page",
    "countInfo": "You have pushed the button this many times:",
    "switchLocal": "Switch Language",
    "chinese": "Chinese",
    "french": "French",
    "english": "English",
  };

  static final zh = {
    "title": "Flutter 案例主页面",
    "countInfo": "你已经点击了按钮这么多次:",
    "switchLocal": "切换语言",
    "chinese": "中文",
    "french": "法文",
    "english": "英文",
  };

  static final fr = {
    "title": "Bonjour,Madame",
    "countInfo": "Un jour, j’irai là bas, te dire bonjour:",
    "switchLocal": "Ça va mon chéri",
    "chinese": "chinois",
    "french": " française",
    "english": "anglais",
  };
}
  """;

  var supportLi=<String>[];


  RegExp regSupport = RegExp(r"final(.*?)=");


  for (Match m in regSupport.allMatches(str)) {
    print(m.group(1).trim());
    supportLi.add(m.group(1).trim());
  }


  var keys=<String>{};
  RegExp regKey = RegExp(r'"(.*?)"\s?:');
  for (Match m in regKey.allMatches(str)) {
    keys.add(m.group(1).trim());
  }
  print(keys);

  var support="[";
//  supportLi.forEach((e) => support +="'$e',");
  support+="]";
//  print(support);

  //  static Map<String, Map<String,String>> _localizedValues = {
  //    'en': Data.en,//英文
  //    'zh': Data.zh,//中文
  //    'fr': Data.fr,//法文
  //  };
  //  static I18N of(BuildContext context) => Localizations.of(context, I18N);
  //  get title => _localizedValues[_locale.languageCode]['title'];
  //  get countInfo => _localizedValues[_locale.languageCode]['countInfo'];
  //  get switchLocal => _localizedValues[_locale.languageCode]['switchLocal'];
  //  get english => _localizedValues[_locale.languageCode]['english'];
  //  get french => _localizedValues[_locale.languageCode]['french'];
  //  get chinese => _localizedValues[_locale.languageCode]['chinese'];

  var mapStr="static Map<String, Map<String,String>> _localizedValues = {";
  supportLi.forEach((e) => mapStr +="'$e':Data.$e,");
  mapStr+="};";
//  print(mapStr);

  var keyStr="";
  keys.forEach((e) => keyStr +="get $e => _localizedValues[_locale.languageCode]['$e'];\n");
//  print(keyStr);

//  for (Match m in matches) {
//    print("${m.group(0).isEmpty ?
//    "Match is Empty\nIndex is ${m.end}" :
//    "Match is ${m.group(0)} \nAscii is ${m.group(0).codeUnits}\nIndex is ${m.end}"}");
//    print("--end--\n");
//  }
}