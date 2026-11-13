class Game {
  Board board = new Board();
  char currentTurn = 'X';

  void display() {
    board.display();
  }

  void makeMove(int col, int row) {
    if (board.placeMark(col, row, currentTurn)) {
      currentTurn = (currentTurn == 'X') ? 'O' : 'X';
    }
  }
}
