PImage liloGanaste;


void pantallaGana(){
    
  background(#F0E6B8);
    
  //BOTONES REINICIAR Y CREDITOS  
  fill(0);
  for (int i= 60 ; i< 515; i+= 270){ 
  rect( i, 150, 185, 80);
}
  
  fill(#F5DDA1);
  for (int i= 65 ; i< 515; i+= 270){
  rect( i, 155, 175, 70);
  }
  
  fill(0);
  textFont(fuenteNueva);
  textSize(30);
  textMode(CENTER);
  text("RESTART", 81, 200);
  text("CREDITS", 356, 200);
 
  fill(0);
  textSize(70);
    text("YOU LOST", 115, 100);
    image(liloGanaste, 140, 190, 300, 300);
  }
