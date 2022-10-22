extension InitialName on String{
  String get initialName {
    final words = split(' ');
    String names ='';
    for(final word in words){
     final firstLetter = word.substring(0,1);
      names +=firstLetter;
    }
    return names;
  } 
}