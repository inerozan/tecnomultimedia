//TP1
//Alumna Ines Rozankovic
//Legajo 91470/0
//Link a video explicativo: https://youtu.be/g3tiLl7NrpA

PImage imagen;
int t;
boolean mouseClicked = false;


void setup() {

  size(800, 400);

  imagen = loadImage ("imagen.jpg");

  background(#bdc850 );

  noStroke();
  t = height/8;
}
void draw() {
  
  image(imagen, 0, 0, 400, 400);

  circulosBlancosAfuera();
  circulosBlancosAdentro();
  circulosMarronesAfuera();
  circulosMarronesAdentro();
  circulosVioletas();
}


void keyPressed() {

  if ( key == 'r' ) {
    resetearVariables();
  }

}

void resetearVariables() {
  background( #bdc850 );
   image(imagen, 0, 0, 400, 400);
  t = height / 8;
  circulosBlancosAfuera();
  circulosBlancosAdentro();
  circulosMarronesAfuera();
  circulosMarronesAdentro();
  circulosVioletas();
}

void mousePressed() {
background(255, random(150, 220), 26);

  image(imagen, 0, 0, 400, 400);
}
