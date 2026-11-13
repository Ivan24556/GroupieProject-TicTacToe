class Board {
  char[][] cells = new char[3][3];
  PImage xImage;
  PImage oImage;

  Board() {
    xImage = loadImage("x.png");
    oImage = loadImage("o.png");
  }

  void display() {
    // Grid lines
    stroke(0); 
    strokeWeight(4);
    line(100, 0, 100, 300); 
    line(200, 0, 200, 300);
    line(0, 100, 300, 100); 
    line(0, 200, 300, 200);

    for (int r = 0; r < 3; r++) {
      for (int c = 0; c < 3; c++) {
        float x = c * 100 + 50;
        float y = r * 100 + 50;

        if (cells[r][c] == 'X') {
          image(xImage, x, y, 60, 60);
        } else if (cells[r][c] == 'O') {
          image(oImage, x, y, 60, 60);
        }
      }
    }
  }

  boolean placeMark(int c, int r, char player) {
    if (c >= 0 && c < 3 && r >= 0 && r < 3 && cells[r][c] == '\0') {
      cells[r][c] = player;
      return true;
    }
    return false;
  }
}
