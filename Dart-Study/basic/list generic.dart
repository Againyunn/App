void main(){
  String mySongs = sing();
  print(mySongs);

  mySongs = genericSing();
  print(mySongs);

  mySongs = useMapSing();
  print(mySongs);

  mySongs = useWhereSing();
  print(mySongs);
}

String sing(){
  // var songs = <String>[];
  var songs = [];
  var songString = '';

  songs.add("We will rock you everybody!\n");
  songs.add(2);
  songs.add(" times repeat");

  int i = 0;
  while(i < songs.length){

    if(i >= 1 && songs[i - 1] is int){
      songString += songs[i].toString();
    }
    else{
      songString += '- ${songs[i].toString()}';
    }  
    
    i++;
  }
  
  return songString;
}

String genericSing(){
  var songs = <String>[];
  var songString = '';

  songs.add("We will rock you everybody!\n");


  /** 
   * forEach메서드를 통해서 map과 유사한 기능 수행가능
   * javascript처럼 화살표 함수로 함수 내부에 익명함수 넣어서 사용가능
  */  
  songs.forEach((element) => {
    songString += '- ${element}'
  });

  // int i = 0; 
  // while(i < songs.length){
  //   songString += '- ${songs[i].toString()}';
  //   i++;
  // }

  
  return songString;
}

String useMapSing(){
  var songs = <String>[];
  var songString;

  songs.add("We will rock you everybody!");

  songString = songs.map((song) => {
    song.toUpperCase()
  });
  
  return songString.toString();
}

String useWhereSing(){
  var songs = <String>[];
  var songString;

  songs.add("We will rock you everybody!");
  songs.add(' two');
  songs.add(" times repeat");
 
  songString = songs.where((element) => element.contains('w'));
  return songString.toString();
}