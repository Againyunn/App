void main(){
  String result = 'initial data';

  getVersionName().then(
    (value) =>{
      printString(value)
    }
  ).catchError(
    (error) =>{
      print(error)
    }
  );
  print(result);
  print('end process');
}

// versionname의 결과를 Future클래스에 임시 저장한다는 의미
Future<String> getVersionName() async{
  var versionName = await lookUpVersionName();
  return versionName;
}

String lookUpVersionName() => 'Android Q';

void printString(data) => print(data);