
void circulosMarronesAfuera() {


  ellipseMode(CORNER);

  pushMatrix();
  translate(414, 22);
  for (int x = 0; x < 8; x ++ ) {   
    for (int y = 0; y < 2; y ++ ) { 
 if (mouseClicked) {
        fill(#F0008C); 
      } else {
       
      fill(#64573D);
      }
      circle( x*t/1.07, y*t/1.07, 36);
      //circle( x*t, y*t, 37);
    }
  }

  for (int x = 0; x < 2; x ++ ) {   
    for (int y = 0; y < 8; y ++ ) { 
 if (mouseClicked) {
        fill(#F0008C); 
      } else {

      fill(#64573D);
      }
      circle( x*t/1.07, y*t/1.07, 36);
      //circle( x*t, y*t, 37);
    }
  }
  popMatrix();

  pushMatrix();
  translate(414, 302);
  for (int x = 0; x < 8; x ++ ) {   
    for (int y = 0; y < 2; y ++ ) { 
 if (mouseClicked) {
        fill(#F0008C); 
      } else {

      fill(#64573D);
      }
      circle( x*t/1.07, y*t/1.07, 36);
      //circle( x*t, y*t, 37);
    }
  }
  popMatrix();

  pushMatrix();
  translate(694.5, 22);
  for (int x = 0; x < 2; x ++ ) {   
    for (int y = 0; y < 8; y ++ ) { 
 if (mouseClicked) {
        fill(#F0008C); 
      } else {

      fill(#64573D);
      }
      circle( x*t/1.07, y*t/1.07, 36);
      //circle( x*t, y*t, 37);
    }
  }
  popMatrix();
}

void circulosMarronesAdentro() {

  pushMatrix();
  translate(500, 115);
  for (int x = 0; x < 4; x ++ ) {   
    for (int y = 0; y < 4; y ++ ) { 
 if (mouseClicked) {
        fill(#F0008C); 
      } else {
    fill(#64573D);
      }
      circle( x*t/1.07, y*t/1.07, 36);
      //circle( x*t, y*t, 37);
    }
  }
  popMatrix();
}
