void main(){
  String myString = 'Throw your \'Dart\'';
  
  // 직접 함수 구현
  String result = reverse(myString);
  print(result);

  // 역순 변환 메서드 활용
  result = myString.split("").reversed.join();
  print(result);
}

String reverse(String old){
  int length = old.length;
  String result = '';

  for(int i = length - 1; i >= 0; i--){
    result += old[i];

    /**
     * 슬라이싱 함수로, .substring(시작 인덱스, 끝 인덱스) 를 활용할 수도 있다.
     */
  }

  return result;
}