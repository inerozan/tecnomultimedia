int creditos = 0;

String[] texto;

PImage stitchSurfboard, hojas;


void pantallaCreditos() {

  if (pantalla == 3) {

    background(#F0E6B8);

    fill(0);

    textSize(42);

    textLeading(40);

    textAlign(CENTER, CENTER);

    text(texto[creditos], 0, 0, width, height);

    textSize(12);

    text("click", mouseX, mouseY); 

    image(hojas, -60, -65, 200, 200);

    image(stitchSurfboard, 340, 350, 250, 250);
  }
}
