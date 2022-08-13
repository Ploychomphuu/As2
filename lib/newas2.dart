import 'dart:io';
import 'gameas2.dart';


void main() {
  var game = Game();
  int result = 0;
  var max;

  print("++++++++++++++++++++++++++++++++++++++++++++++");
  print("                PLAY THE GAME                 ");
  print("++++++++++++++++++++++++++++++++++++++++++++++");

  while(true){
    print("Please input maxrandom: ");
    var input = stdin.readLineSync();
    var count;

    if(input == "") {
      max = Game();
    }else{
      var guess = int.tryParse(input!);
      count = guess;
      max = Game(guess!);
    }

  do {
    stdout.write("Please guess the number between 1 and $count: ");
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if (guess == null) {
      continue;
    }
    result = max.doguess(guess);
  } while (result != 1);
  max.length();
    print("You want to play game again?");
    stdout.write("Please enter Y or N: ");
    var play = stdin.readLineSync();

      if (input == "N") {
      print("++++++++++++++++++++++++++++++++++++++++++++++");
      print("                  END GAME                    ");
      print("++++++++++++++++++++++++++++++++++++++++++++++");
      break;

    } else {
        print("Please enter Y or N: ");
        continue;
      }
  }
}/