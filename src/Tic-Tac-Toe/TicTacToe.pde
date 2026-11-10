char[][] board = {
  { ' ', ' ', ' ' },
  { ' ', ' ', ' ' },
  { ' ', ' ', ' ' }
};

void setup() {
  size(600,600);
}


void draw() {
  stroke(50);
  strokeWeight(4);
  
  // Vertical lines
  line(width / 3, 0, width / 3, height );
  line((width / 3) * 2, 0, (width / 3) * 2, height);
  
  // Horizontal lines
  line(0, height / 3, width, height / 3);
  line(0, (height / 3) * 2, width, (height / 3) * 2);
}

