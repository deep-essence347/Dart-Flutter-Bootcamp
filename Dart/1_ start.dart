import 'dart:io';

main(){
  stdout.writeln("Who are you?");
  var a=stdin.readLineSync();

  print('I am $a.');
}