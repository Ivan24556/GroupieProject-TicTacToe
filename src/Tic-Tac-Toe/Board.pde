char[][] board = {
  { ' ', ' ', ' ' },
  { ' ', ' ', ' ' },
  { ' ', ' ', ' ' }
};




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
