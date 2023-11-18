class Rama{
  
  constructor() {
    this.posX = int(random(-80, 420));
    this.y = int (random (-100, -50) );
    this.t = 120;
    this.v = random (3,10);
    this.imgArray = foto;
  }

  actualizar() {
     this.y = this.y + this.v;
     //reciclar los obstaculos
     if ( this.y >= height+this.t ) {
     // reinicio la posicion en y
     this.y = int( random(-100, -50 ) );
     this.v = random(3,8);  
     this.posX = int(random(-80, 420));
    }    
  }
  
  dibujar() {
    push();
    image(this.imgArray [7], this.posX+100, this.y, this.t, this.t);
    pop();
    console.log(this.posX);
  }
  
}
