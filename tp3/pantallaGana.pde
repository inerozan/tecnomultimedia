PImage liloGanaste;


void pantallaGana() {

  background(#F0E6B8);

  //BOTONES REINICIAR Y CREDITOS  
  fill(0);
  for (int i= 60; i< 515; i+= 270) { 
    rect( i, 150, 185, 80);
  }

  fill(#F5DDA1);
  for (int i= 65; i< 515; i+= 270) {
    rect( i, 155, 175, 70);
  }

  image(creditsDos, 335, 155, 175, 70);
  image(restart, 65, 155, 175, 70);
  image(youlost, 105, 50);
  image(liloGanaste, 210, 340, 200, 230);
}
