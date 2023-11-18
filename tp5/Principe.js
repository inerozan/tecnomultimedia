class Principe{
  
  constructor(){ //DECLARO VARIABLES Y PROPIEDADES
  this.x = 250;
  this.y =420;
  this.imgArray = foto;

}

  dibujar(){
   image(this.imgArray [6], this.x,  this.y, 120, 160);
   this.x = constrain(this.x, 0, 480);
   console.log(this.colision);
}
  
 teclaPresionada(keyCode){ //METODO PARA MOVER AL PRINCIPE CON LAS TECLAS DE DERECHA E IZQUIERDA
  
  if (keyCode === LEFT_ARROW) {
    this.x = this.x -50;
   } 
  
  else if (keyCode === RIGHT_ARROW) {
    this.x = this.x + 50;
   }
  }
  
}
