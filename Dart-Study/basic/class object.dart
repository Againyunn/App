void main(){
  Person clark = Person('Clark', 'kent');
  clark.name = 'Clark';
  clark.surname = 'Kent';
  print('result1: ${clark.name} ${clark.surname}');

  OpParameterPerson clark2 = OpParameterPerson();
  print('result2: ${clark2.name} ${clark2.surname}');
}

class Person{
  // class의 각 인자값을 초기화하지 않으면 에러 발생
  String name = '';
  String surname = '';

  int _age = 0;

  /**생성자 
   * 경우1: 반드시 정해진 매개변수를 선언해야 하는 경우
  */
  Person(String name, String surname){
    this.name = name;
    this.surname = surname;
  }

  /**set함수를 통해 class의 인자 값 지정 */
  void set age(int years){
    if(years > 0 && years < 120){
      _age = years;
    }
    else{
      _age = 0;
    }
  }

  /**get함수를 통해 class의 인자 값을 반환(수정x) */
  int get age{
    return _age;
  }
}


class OpParameterPerson{
  // class의 각 인자값을 초기화하지 않으면 에러 발생
  String name = '';
  String surname = '';

  int _age = 0;

  /**생성자 
   * 경우2: 인스턴스에 정해진 매개변수를 입력하지 않아도, default값이 지정된 경우
   *        개발자가 매개변수를 "선택사항"으로 만들 수 있다.
  */
  OpParameterPerson([String name = '', String surname = '']){
    this.name = name;
    this.surname = surname;
  }

  /**set함수를 통해 class의 인자 값 지정 */
  void set age(int years){
    if(years > 0 && years < 120){
      _age = years;
    }
    else{
      _age = 0;
    }
  }

  /**get함수를 통해 class의 인자 값을 반환(수정x) */
  int get age{
    return _age;
  }
}
