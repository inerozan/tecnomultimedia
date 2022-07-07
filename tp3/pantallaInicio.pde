PImage playa, introLiloyStitch, titulos, start, credits, iDeInstrucciones;

void pantallaInicio() {

  if (pantalla == 1) {

    image(playa, 0, 0, 600, 600);
    image(introLiloyStitch, 140, 160, 300, 300);
    image(titulos, 40, 10, 500, 150);

    //BOTONES START Y CREDITS
    fill(0);
    for (int i= 60; i< 545; i+= 255) { 
      rect( i, 490, 230, 80);
    }

    fill(#F5DDA1);
    for (int i= 65; i< 545; i+= 255) {
      rect( i, 495, 220, 70);
    }

    image(start, 65, 495, 220, 70);
    image(credits, 320, 493, 220, 70);
    image(iDeInstrucciones, 190, 460);
  }
}
