void main(){
  // 자료형과 함께 변수 선언
  String variable1 = "Dart";

  // 타입 미지정 변수 선언
  var variable2 = "Dart";
 variable2 = "Mr.";

  // 동적 타입 변수 선언(자료형에 관계 없이 사용가능한 변수)
  dynamic variable3 = "age";
 variable3 = 26;

  print("Hello World:  ${variable2}${variable1}! age: ${variable3}");
}