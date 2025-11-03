import 'dart.io' ;

void main (){
  //ข้อที่1
  print("welcome to dart");

  //ข้อที่2
  var planet = "earth";
  print(planet);

  //ข้อที่3 
  int myAge = 16 ;
  print(myAge);

  //ข้อที่4 
  double piValue = 3.14159 ;
  print(piValue);

  //ข้อที่5
  bool isDartFun = true;
  print(isDartFun);

  //ข้อที่6
  int a = 15;
  int b =4;
  print(a +b);
  
  //ข้อที่7
  print(a*b);

  //ข้อที่8
  var name = "Alice";
  int Age = 28;
  print("my name is ${name} and i am ${Age} years old");

  //-ข้อที่9
  /* var myNumber = 100;
  myNumber ="Hello";
  ใช้ไม่ได้เพราะเป็นStrong type */

  //ข้อที่10
  /*
  final city = "bangkok";
  final city ="chiang mai";
  ใช้ไม่ได้ เพราะ final เป็นค่าคงที่ไม่สามารถเปลี่ยนค่าได้
  */

  //ข้อที่11
  const secondsInMinute = 60;

  //ข้อที่12
  /*num flexibleNumber = 50;
  flexibleNumber =75.5;
  ใช้งานไม่ได้เพราะ Num เป็น super set ใช้ได้ทั้งint and double
  */

  //ข้อที่13
  int x =10;
  int y =4;
  print(x/y);
  print((x/y).runtimeType);

  //ข้อที่14
  x = 10;
  y = 4 ;
  print(x~/y);
  print((x~/y).runtimeType);

  //ข้อที่15
  x = 10;
  y = 4;
  print(x % y);

// ข้อที่16
 int score =85;
 if(score >= 80){
  print(true);
 }else{
  print(false);
 }


//ข้อที่17
score= 85;
if(score != 100){
  print(true);
}else{
  print(false);
}

//ข้อที่18
var isMember =(true);
var hasCoupon = (false);
print(isMember&&hasCoupon);
}
