
import 'dart:convert';
import 'package:http/http.dart' as client;

import '../bean/search_result.dart';




class GithubApi{


  static Future<SearchResult> search(String term) async {
    var api = "https://api.github.com/search/repositories?q=$term";
    var rep = await client.get(api);//发送get请求,获取响应
    final results = json.decode(rep.body);
    return SearchResult.fromJson(results);
  }

}