import 'dart:math';

abstract class Operable{
  void reflex();//反向
  void reflexX();//X反向
  void reflexY();//Y反向
  void scale(num xRate,num yRate);//缩放
  void translate(num dx,num dy);//平移
  void rotate(num deg,[isAnticlockwise=true]);//旋转
}

class Vector2 implements Operable{
  num x;//成员变量x
  num y;//成员变量y
  Vector2(this.x,this.y); //构造函数
  Vector2.fromMap(Map<String,num> point){//映射对象
    this.x = point['x'];  this.y = point['y'];
  }
  @override
  String toString() {
    return '(${this.x},${this.y}）';
  }
  double get distance => sqrt(x * x + y * y);//模
  double get rad=>atan2(y,x);//弧度
  double get angle=>rad*180/pi;//角度
  Vector2 operator +(Vector2 other) => //+重载
  Vector2(x + other.x, y + other.y);
  Vector2 operator -(Vector2 other) => //-重载
  Vector2(x - other.x, y - other.y);
  num operator *(Vector2 other) =>//*重载
  x * other.x + y * other.y;

  @override
  void reflex() {
    this.x=-x; this.y=-y;
  }
  @override
  void reflexX() {   this.x=-x; }
  @override
  void reflexY() {  this.y=-y;  }
  @override
  void rotate(num deg,
      [isAnticlockwise = true]) {
    var curRad = rad + deg*pi/180;
    this.x=distance*cos(curRad);
    this.y=distance*sin(curRad);
  }
  @override
  void scale(num xRate, num yRate) {
    this.x *=xRate;  this.y *=yRate;
  }
  @override
  void translate(num dx, num dy) {
    this.x +=dx; this.y +=dy; }
}

