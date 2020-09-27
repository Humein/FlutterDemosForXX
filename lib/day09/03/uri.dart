main(){
  var link = 'https://toly1994.com:8089/login/who?name=toly&&age=25#unit1';
  var uri = Uri.parse(link);
  print("scheme=${uri.scheme}"); //scheme=https
  print("origin=${uri.origin}"); //origin=https://toly1994.com:8089
  print("host=${uri.host}"); //host=toly1994.com
  print("port=${uri.port}"); //port=8089
  print("path=${uri.path}"); //path=/login/who
  print("query=${uri.query}"); //query=name=toly&&age=25
  print("fragment=${uri.fragment}"); //fragment=unit1
  print( "queryParameters=${uri.queryParameters}"); //queryParameters={name: toly, age: 25}
  print("pathSegments=${uri.pathSegments}"); //pathSegments=[login, who]
  print("authority=${uri.authority}"); //authority=toly1994.com:8089


  Uri uriFile= Uri.file("/Volumes/coder/hello/zero_zone.txt");
  print(uriFile);//文件资源定位符  file:///Volumes/coder/hello/zero_zone.txt
}