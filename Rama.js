class Rama{
  
  constructor(posY) { //DECLARO VARIABLES Y PROPIEDADES
    //this.posX = posX;
    //this.posY = int (random (-100, -50) );
    //this.t = 50;
    //this.v = random (3,6);
  
  
  this.size= random(50,50);
  this.x = random(this.size,width -this.size);
  this.y = random(-100, -50);
  this.imgArray = foto;
  }
  
  //actualizar() {
  //  this.posY = this.posY + this.v;
  //  //reciclar los obstaculos
  //  if ( this.posY >= height+this.t ) {
  //    // reinicio la posicion en y
  //    this.posY = int( random(-100, -50 ) );
  //    this.v = random(3,6);
  //  }
  //}
  
  dibujar(imgArray) {

  image(this.imgArray[7],this.x,this.y, this.size,this.size); 
  }
  
  
}
