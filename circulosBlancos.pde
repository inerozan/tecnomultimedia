
void circulosBlancosAfuera() {

  ellipseMode(CORNER);

  pushMatrix();
  translate(407, 22);
  for (int x = 0; x < 8; x ++ ) {   
    for (int y = 0; y < 2; y ++ ) { 
point(x, y);
      fill(255);

      circle( x*t/1.07, y*t/1.07, 36);
      //circle( x*t, y*t, 37);
    }
  }

  for (int x = 0; x < 2; x ++ ) {   
    for (int y = 0; y < 8; y ++ ) { 

      fill(255);

      circle( x*t/1.07, y*t/1.07, 36);
      //circle( x*t, y*t, 37);
    }
  }
  popMatrix();

  pushMatrix();
  translate(407, 302);
  for (int x = 0; x < 8; x ++ ) {   
    for (int y = 0; y < 2; y ++ ) { 

      fill(255);

      circle( x*t/1.07, y*t/1.07, 36);
      //circle( x*t, y*t, 37);
    }
  }
  popMatrix();

  pushMatrix();
  translate(687.5, 22);
  for (int x = 0; x < 2; x ++ ) {   
    for (int y = 0; y < 8; y ++ ) { 

      fill(255);

      circle( x*t/1.07, y*t/1.07, 36);
      //circle( x*t, y*t, 37);
    }
  }
  popMatrix();
}

void circulosBlancosAdentro() {

  pushMatrix();
  translate(506, 116);
  for (int x = 0; x < 4; x ++ ) {   
    for (int y = 0; y < 4; y ++ ) { 

      fill(255);

      circle( x*t/1.07, y*t/1.07, 36);
      //circle( x*t, y*t, 37);
    }
  }
  popMatrix();
}
