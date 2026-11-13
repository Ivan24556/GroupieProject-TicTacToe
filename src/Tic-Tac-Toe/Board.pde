// Bulat Urmeyev

class Board {
  char[][] cells = new char[3][3];
  PImage xImage;
  PImage oImage;
  color startColor;
  color endColor;
  float amount = 0;
  float speed = 0.01;

  Board() {
    xImage = loadImage("x.png");
    oImage = loadImage("o.png");
    startColor = color(255, 0, 100);
    endColor = color(0, 200, 255);
  }

  void display() {
    color currentColor = lerpColor(startColor, endColor, amount);
    stroke(currentColor); 
    strokeWeight(4);
    
    // Grid lines
    line(100, 0, 100, 300); 
    line(200, 0, 200, 300);
    line(0, 100, 300, 100); 
    line(0, 200, 300, 200);
    amount += speed;
    if (amount >= 1.0 || amount <= 0.0) {
      speed *= -1;
    }

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
