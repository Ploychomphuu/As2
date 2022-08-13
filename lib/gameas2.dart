import 'dart:math';

class Game {
  int ans = 0;
  var List = <int>[];

  Game([int maxRandom = 100]) {
   Random r = Random();
   ans = r.nextInt(maxRandom)+1;

  }
  int count=1;
  int doguess(int num) {
    if (num > ans) {
      print("➜ $num is TOO HIGH!!");
      print("──────────────────────────────────────────────");
      count++;
      List.add(num);
      return 0;
    } else if (num < ans) {
      print("➜ $num is TOO LOW!!");
      print("──────────────────────────────────────────────");
      count++;
      List.add(num);
      return 0;
    } else {
      print("➜ $num is CORRECT ❤, total guesses: $count");
      count = 1;
      List.add(num);
      return 1;
    }
  }
  void length(){
    print("${List.length} in a row");
  }
}//








