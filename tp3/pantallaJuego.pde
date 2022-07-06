int x =250;

int y = 420;

PImage playaDos;

PImage autito2;


void pantallaJuego(){
  
   if (pantalla == 2){
   image(playaDos, -60, 0, 670, 600); 
   image(autito2, x, y, 90, 180);
  }
  
}

void mouseDragged(){
  
 if (mouseX > x - 235 && mouseX < x + 235){
   if(mouseY >y - 250 && mouseY < y + 250){
     x = mouseX;
     y = mouseY;
   }}
   
 if(estoyDentroDeLaZonaTres){
   pantalla = 4;
  
}
}
