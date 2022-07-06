PImage playa, introLiloyStitch, titulos;


void pantallaInicio(){
  
  if (pantalla == 1){
    
  image(playa, 0, 0, 600, 600);
  image(introLiloyStitch, 140, 160, 300, 300);
  image(titulos, 40, 10, 500, 150);
  textSize(19);
  text("Press 'i' for instructions", 190, 480);
  
  //BOTONES START Y CREDITS
  fill(0);
  for (int i= 60 ; i< 545; i+= 255){ 
  rect( i, 490, 230, 80);
}
  
  fill(#F5DDA1);
  for (int i= 65 ; i< 545; i+= 255){
  rect( i, 495, 220, 70);
  }
  
  fill(0);
  textSize(35);
  textFont(fuenteNueva);
  textMode(CENTER);
  text("START", 93, 545);
  text("CREDITS", 325, 545);
  }
}
