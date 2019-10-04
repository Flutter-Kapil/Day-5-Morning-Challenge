// Challenge One:
// Create a function 'squarePatch' that takes an integer and prints an n x n square solely consisting of the integer n.
//squarePatch(3) should print
//  [
//    [3, 3, 3],
//    [3, 3, 3],
//    [3, 3, 3]
//  ]
//
//squarePatch(5) should print
//  [
//    [5, 5, 5, 5, 5],
//    [5, 5, 5, 5, 5],
//    [5, 5, 5, 5, 5],
//    [5, 5, 5, 5, 5],
//    [5, 5, 5, 5, 5]
//  ]
//
//squarePatch(1) should print
//  [
//    [1]
//  ]
//
// squarePatch(0) should print []
void squarePatch(int x) {
  List finalList = [];
  for (int i = 1; i <= x; i++) {
    List temp = [];
    for (int j = 1; j <= x; j++) {
      temp.add(x);
    }
    finalList.add(temp);
  }
  print(finalList);
}

main() {
  squarePatch(3);
  print('end of sqaurePatch function');
  List<List<String>> board = [
    ['O', ' ', ' '],
    [' ', 'X', ' '],
    ['X', ' ', ' ']
  ];

  printBoard(board);
  // The above call should print:
  //    A   B   C
  // 1  O |   |
  //   ---+---+---
  // 2    | X |
  //   ---+---+---
  // 3  X |   |
  print('end of printBoard function test 1');
  board[0][2] = 'O';
  printBoard(board);
  // The above call should print:
  //    A   B   C
  // 1  O |   | O
  //   ---+---+---
  // 2    | X |
  //   ---+---+---
  // 3  X |   |
  print('end of printBoard function test 2');
  printBoard3(board, 1, 0, 'X');
}

void printBoard(var lst) {
  print('   A   B   C');
  print('1  ${lst[0][0]} | ${lst[0][1]} | ${lst[0][2]}');
  print('  ---+---+---');
  print('2 ${lst[1][0]}  | ${lst[1][1]} |${lst[1][2]}');
  print('  ---+---+---');
  print('3  ${lst[2][0]} | ${lst[2][1]} |${lst[2][2]}');
}
// Write a function called 'printBoard' which takes a List of List of Strings,
// and prints a Tic Tac Toe board to the console.  The board will always
// have dimensions 3 x 3.

//void printBoard2(List<List<String>> aList) {
//  print(aList[i]);
//}

void printBoard3(List<List<String>> aList, int r, int c, String x) {
  aList[r][c] = x;
  for (int i = 0; i < aList.length; i++) {
    print(aList[i]);
  }
}
