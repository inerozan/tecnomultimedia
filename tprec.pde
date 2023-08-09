    //TPREC
    //Alumna Ines Rozankovic
    //Legajo 91470/0
    //link a video explicativo: https://youtu.be/52cP5VgHqeQ

PImage imagen;
String estado = "estado 0";

void setup() {
  size(800, 400);
  imagen = loadImage ("imagen.jpg");
  background(#bdc850 );
  noStroke();
}


float efectos(int posM){
 
 float val = map(posM, 0,400, 100, 255);
 
 return val;
}


void draw() {
 
  image(imagen, 0, 0, 400, 400);
  circulosBlancos(430,40);
  circulosVioleta(430,40);
}


void mousePressed(){
 estado = "efecto";
}  


void keyPressed(){
 
  if(key == 'r')
    estado = "estado 0";
}  
