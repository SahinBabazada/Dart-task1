import 'dart:io';

main() {
  //Task 1: İstifadəçidən adını və yaşını daxil etməyi tələb edən proqram yaradın. 100 yaşının neçə il sonra tamam olduğunu bildirən bir mesaj çap edin
  print('Adınızı və yaşınızı daxil edin, zəhmət olmasa: ');
  String name_age = stdin.readLineSync().toString();
  int age = int.parse(name_age.replaceAll(RegExp(r'[^0-9]'),''));
  String name = name_age.replaceAll(age.toString(),'').replaceAll(' ', '');

  print('$name ${100 - age} il sonra 100 yaşında olacaq');

  //Task 2: İstifadəçidən ən azı 5 sözdən ibarət cümlə daxil etməyi tələb edən proqram yaradın.  Cümləni sözlərini əksinə sıralayan bir mesaj çap edin.
  print('ən azı 5 sözdən ibarət cümlə daxil edin, zəhmət olmasa: ');

  String sentence = stdin.readLineSync().toString();

  while(sentence.split(' ').length < 5){
      print('söz sayı 5dən azdır zəhmət olmasa yenidən daxil edin: ');
      sentence = stdin.readLineSync().toString();
  }

  print('Cümlədəki sözlərin əksinə yazılışı: ${sentence.split(' ').reversed.join(' ')}');
}
