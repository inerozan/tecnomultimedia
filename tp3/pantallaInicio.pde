PImage playa;

PImage introLiloyStitch;

PImage titulos;


void pantallaInicio(){
  
  if (pantalla == 1){
  image(playa, 0, 0, 600, 600);
  image(introLiloyStitch, 140, 190, 300, 300);
  image(titulos, 40, 20, 500, 150);
  
  
  //ACA PUEDO USAR CICLO FOR
  fill(0);
  rect(60, 490, 230, 80);
  
  fill(#F5DDA1);
  rect(65, 495, 220, 70);
  
  fill(0);
  textSize(35);
  textFont(fuenteNueva);
  text("START", 93, 545);
  
  fill(0);
  rect(315, 490, 230, 80);
  
  fill(#F5DDA1);
  rect(320, 495, 220, 70);
  
  fill(0);
  textSize(35);
  textFont(fuenteNueva);
  text("CREDITS", 325, 545);
  }
}
