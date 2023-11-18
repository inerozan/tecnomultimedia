class Rama{
  
  constructor(posX) {
    this.posX = posX;
    this.y = int (random (-100, -50) );
    this.t = 50;
    this.v = random (3,6);
    this.colorP = color ( 0, 0, 255);
  }
  
      actualizar() {
    this.y = this.y + this.v;
    //reciclar los obstaculos
    if ( this.y >= height+this.t ) {
      // reinicio la posicion en y
      this.y = int( random(-100, -50 ) );
      this.v = random(3,6);  
    }
    
  }
  
  dibujar() {
    push();
    fill (this.colorP);
    ellipse (this.posX+100, this.y, this.t, this.t);
    pop();
    console.log(this.posX);
  }
  
}
