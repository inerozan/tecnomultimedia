class Rama{
  
  constructor() {
    this.posX = int(random(-100, 420));
    this.y = int (random (-120, -50) );
    this.t = 120;
    this.v = random (2,2.5);
    this.imgArray = foto;  
    this.colision = false;
  }

  actualizar() {
     this.y = this.y + this.v;
     //reciclar los obstaculos
     if ( this.y >= height+this.t ) {
     // reinicio la posicion en y
     this.y = int( random(-120, -50 ) );
     this.v = random(2,3);  
     this.posX = int(random(-100, 420));    
    }       
  }
  
  dibujar() {
    push();
    image(this.imgArray[7], this.posX+100, this.y, this.t, this.t);
    this.mRama();
    pop();
  }
  
  mRama(){

    if ( this.y > height ) {

      this.y = random(-120, -50); 

      //le da una posX random a cada una de las X
      this.posX = random(-100, 420);
       this.colision = false;
    }
  }
  
}
