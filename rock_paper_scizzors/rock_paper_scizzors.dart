import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scizzors }

void main() {
  final rng = Random();
  while (true) {
    stdout.write('Rock, paper or scizzors? (r/p/s) ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scizzors;
      }
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      print('You played: $playerMove');
      print('AI played: $aiMove');
      if (playerMove == aiMove) {
        print("It's a draw");
      } else if (playerMove == Move.rock && aiMove == Move.scizzors ||
          playerMove == Move.paper && aiMove == Move.rock ||
          playerMove == Move.scizzors && aiMove == Move.paper) {
        print("You win");
      } else {
        print("You lose");
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid input');
    }
  }
//while true
// Show prompt
// Read user imput from console
// If input is a valid move ("r", "p", "s")
//   Choose the AI move at random
//   Compare the player move with the AI move
//   Show the result
// else if input is "q"
//   Quit the program
// else
//   Invalid input
}
