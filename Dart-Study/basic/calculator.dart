void main(){
  // int 리터럴도 자동으로 double 형태로 변환
  double result = calculateArea(12, 5, true);
  print("The Result is " + result.toString());

  result = calculateArea(12, 5);
  print("The Result is " + result.toString());
}

/**
 * Dart는 overloading을 지원x(동일한 이름의 함수지만, 매개변수의 수가 달라 서로 다른 기능을 수행할 수 있게하는 OOP언어의 특성)
 */

double calculateArea(double width, double height, [bool isTriangle = false]){
  double area = 0;

  if(isTriangle){
    area = width * height / 2;
  }
  else{
    area = width * height;
  }
   
  return area;
}