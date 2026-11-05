// Bulat Urmeyev. Ivan Montano, Milo Jones

char[][] board = {
  { ' ', ' ', ' ' },
  { ' ', ' ', ' ' },
  { ' ', ' ', ' ' }
};

char currentPlayer = 'X';
boolean gameOver = false;
String message = "Player X's turn";

void setup() {
  size(600, 600);
  textSize(32);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(240);
  drawGrid();
  drawPeices();
  fill(50);
  textSize(24);
  text(message, width / 2, height - 30);
}

void drawGrid() {
  stroke(50);
  strokeWeight(4);
  
  // Vertical lines
  line(width / 3, 0, width / 3, height - 60);
  line((width / 3) * 2, 0, (width / 3) * 2, height - 60);
  
  // Horizontal lines
  line(0, height / 3, width, height / 3);
  line(0, (height / 3) * 2, width, (height / 3) * 2);
}

void drawPeices() {

}

void mousePressed() {

}
