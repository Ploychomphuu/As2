import 'dart:io';
import 'gameas2.dart';


void main() {
  var game = Game();
  int result = 0;
  var max;

  while (true) {
    print("Plaese intput maxrandom:");
    var input = stdin.readLineSync();
    var count;
    if (input == "") {
      max = Game();
    } else {
      var x = int.tryParse(input!);
      count = x;
      max = Game(x!);
    }

    do {
      print("");
      stdout.write("Please guess the number between 1 and $count : ");
      var input = stdin.readLineSync();
      var guess = int.tryParse(input!);
      if (guess == null) {
        stdout.write("Please enter number only");
        continue;
      }
      result = max.doguess(guess);
    } while (result != 1);
    max.length();
    print("Please enter Y Or N");
    var play = stdin.readLineSync();
    if(play=="N"){
      break;
    }
  }
}