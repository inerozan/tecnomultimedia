
void circulosVioletas() {
  ellipseMode(CORNER);
  pushMatrix();
  translate(410, 22);

  for (int x = 0; x < 8; x++) {
    for (int y = 0; y < 8; y++) {
      if (mouseClicked) {
        fill(#FF0AAA); 
      } else {
        fill(#6f498b); 
      }

      circle(x * t / 1.07, y * t / 1.07, 36);
    }
  }
  popMatrix();
}

void mouseClicked() {
  mouseClicked = true;
  
 
}
