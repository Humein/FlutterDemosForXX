import 'dart:convert';

import 'package:http/http.dart' as client;

main() {
//  put();
//  update();
//  post();
  get();
//  getUser();
}

void put() async {
  var baseUrl = "https://api.github.com/";
  var operate = "repos/toly-flutter/flutter_guide/contents/";
  var path = "http-put-file.txt";
  var params = "?access_token=58228147ad1743285db9f725100d16736a07d9d3"; //请求参数
  var api = baseUrl + operate + path + params; //url
  Map<String, String> headers = {"Content-Type": "application/json"}; //请求头
  var reqBody = """
  { "message": "commit from commit from toly",
  "content": "aGVsbG8=" }
  """; //请求体
  var rep = await client.put(api, headers: headers, body: reqBody);//发送put请求,获取响应
  print(rep.body);//响应体
  print(rep.statusCode);//响应码
}


void update() async{
  var baseUrl="https://api.github.com/";
  var operate="repos/toly-flutter/flutter_guide/contents/";
  var path="http-put-file.txt";
  var params="?access_token=58228147ad1743285db9f725100d16736a07d9d3";//请求参数
  var api =baseUrl+operate+path+params;//url
  Map<String ,String> headers = {"Content-Type":"application/json"};//请求头
  var reqBody="""
  { "message": "update by toly",
  "content": """+"\"${str2Base64("张风捷特烈")}\""+""",
  "sha":"b6fc4c620b67d95f953a5c1c1230aaab5db5a1b0" }
  """;//请求体
  var rep = await client.put(api, headers: headers, body: reqBody);//发送put请求,获取响应
  print(rep.body);//响应体
  print(rep.statusCode);//响应码
}
//将字符串转化为base64
String str2Base64(String content){
  var bytes = utf8.encode(content);
  return base64Encode(bytes);
}

void post() async{
  var baseUrl="https://api.github.com/";
  var operate="repos/toly-flutter/flutter_guide/issues";
  var params="?access_token=58228147ad1743285db9f725100d16736a07d9d3";//请求参数
  var api =baseUrl+operate+params;//url
  Map<String ,String> headers = {"Content-Type":"application/json"};//请求头
  var reqBody="""{ "title": "一起来Flutter之旅吧",
  "body": "Flutter，大家感觉怎么样?应该不难吧!"}
  """;//请求体
  var rep = await client.post(api, headers: headers, body: reqBody);//发送post请求,获取响应
  print(rep.body);//响应体
  print(rep.statusCode);//响应码
}

void get() async{
  //GET /repos/:owner/:repo/issues/:issue_number
  var baseUrl="https://api.github.com/";
  var operate="repos/toly-flutter/flutter_journey/issues/2";
  var api =baseUrl+operate;//url
  var rep = await client.get(api);//发送get请求,获取响应
  print(rep.body);//响应体
  print(rep.statusCode);//响应码
}

void getUser({String name='toly1994328'}) async{
  var api ='https://api.github.com/users/$name';//url
  var rep = await client.get(api);//发送get请求,获取响应
  print(rep.body);//响应体
  print(rep.statusCode);//响应码
}
