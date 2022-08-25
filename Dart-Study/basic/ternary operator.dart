void main(){
  int value = 0;
  print(convertToBool(value));

  value = 1;
  print(convertToBool(value));

  String user = 'Againyunn';
  print(sayHello(user));

}

/**삼항연산자를 활용한 함수 제작 */
bool convertToBool(int value) => (value == 0) ? false : true;

String sayHello(String name) => "Hello ${name}!";