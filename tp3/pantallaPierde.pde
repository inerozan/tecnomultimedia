PImage stitchsad;


void pantallaPierde(){
  
  if (pantalla == 4){
   
    background(#F0E6B8);
    
    fill(0);
  rect(60, 150, 185, 80);
  
  fill(#F5DDA1);
  rect(65, 155, 175, 70);
  
  fill(0);
  textFont(fuenteNueva);
  textSize(30);
  text("REINICIAR", 73, 200);
    
    
     fill(0);
  rect(330, 150, 185, 80);
  
  fill(#F5DDA1);
  rect(335, 155, 175, 70);
  
  fill(0);
  textFont(fuenteNueva);
  textSize(30);
  text("CREDITOS", 343, 200);
 
  
  fill(0);
  textSize(70);
    text("YOU LOST", 115, 100);
    image(stitchsad, 210, 340, 200, 230);
 
}}
