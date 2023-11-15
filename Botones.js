class Botones{
  
  constructor(x, x1, y, y1, ancho, alto){
  this.x = x;
  this.x1 = x1;
  this.y = y;
  this.y1 = y1;
  this.ancho = alto;
  this.alto = alto;
  }
  
  dibujar(){ 
  }
  
  boton(x, x1, y, y1, ancho, alto) {
  
    //BOTON CREDITO REDONDO
    if (this.estoyDentrodeBoton(x, x1, y, y1) ) {
      fill(255);
    } else {
      fill(180); 
    }
    
    noStroke();
    rect(x, y, ancho, alto);
    this.textoBotones();
  }
  
  textoBotones() {
    fill(0);
    textSize(17);
    textAlign(CENTER);
  }
  
estoyDentrodeBoton(x, x1, y, y1) { //con parametros con return
    return mouseX> x && mouseX< x1 && mouseY> y && mouseY< y1;
  }
}
