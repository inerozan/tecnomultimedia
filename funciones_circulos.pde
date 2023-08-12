void circulosBlancos(int posX, int posY) {

  float des = 3.8;
 
    fill(255);
  for (int x = 0; x < 8; x ++ ) {  
    for (int y = 0; y < 8; y ++ ) {
         
       if(( x > 1) && ( x <6)){      // FILAS 3 4 5 6 
          if(( y > 1) && ( y <6))   // COLUMNAS 3 4 5 6 
               circle(posX+des+ x*47, posY+ y*47, 36);
                 else
                    circle(posX-des+ x*47, posY+ y*47, 36);
          }else{
             circle(posX-des+ x*47, posY+ y*47, 36);
     
           }
    }
  }
}

void circulosVioleta(int posX, int posY) {
//  ellipseMode(CORNER);

  for (int x = 0; x < 8; x ++ ) {  
    for (int y = 0; y < 8; y ++ ) {

      if(estado == "estado 0")
         fill(#6f498b);
          else
           fill(random(100,200), efectos(mouseY), 200);

      circle(posX+ x*47, posY+ y*47, 36);
    }
  }

}
