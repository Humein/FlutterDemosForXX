
import 'dart:convert';
import '../bean/follower.dart';
import 'package:http/http.dart' as client;

import '../bean/search_result.dart';




class GithubApi{

  static Future<SearchResult> search(String term) async {
    var api = "https://api.github.com/search/repositories?q=$term";
    var rep = await client.get(api);//发送get请求,获取响应
    final results = json.decode(rep.body);
    return SearchResult.fromJson(results);
  }

  static Future<List<Follower>> getUserFollowers({String login='toly1994328'}) async{
    var api ='https://api.github.com/users/$login/followers';//url
    var rep = await client.get(api);//发送get请求,获取响应
    print(rep.body);
    var list =json.decode(rep.body) as List;
    return list.map((e)=>Follower.fromJson(e)).toList();
  }

}