class Principe{
  
  constructor(){ //DECLARO VARIABLES Y PROPIEDADES
  this.x = 250;
  this.imgArray = foto;
  this.vidas = 3;
}

  dibujar(imgArray){
   image(this.imgArray [6], this.x,  420, 120, 160);

}
   devolverVidas() {
    return this.vidas == 3;
  }
  
 teclaPresionada(keyCode){ //METODO PARA MOVER AL PRINCIPE CON LAS TECLAS DE DERECHA E IZQUIERDA
  
  if (keyCode === LEFT_ARROW) {
    this.x = this.x -50;
    //this.imgPrincipe = [8];
   } 
  
  else if (keyCode === RIGHT_ARROW) {
    this.x = this.x + 50;
    //this.imgPrincipe = [6];
   }
  }
  
}
