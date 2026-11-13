// Bulat Urmeyev, Ivan Montano, Milo Jones

Game game;

void setup() {
  size(300, 300);
  imageMode(CENTER);
  game = new Game();
}

void draw() {
  background(255);
  game.display();
}

void mousePressed() {
  game.makeMove(mouseX / 100, mouseY / 100);
}
