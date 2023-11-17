class Rama{
    constructor( x ){
    this.y = int( random(-200, -500 ) );
    this.x = x;
    this.t = 40;
    this.v = random( 1, 5 );
  }
  
  actualizar(){
    //this.x++;  //misma velocidad porque =+1
    this.y = this.y + this.v;  // this.x += this.v;
    
    // "metodo" para reciclar
    if( this.y >= height+this.t ){
      // reinicio la posicion en x
      this.y = int( random(-200, -500 ) );  // se teletransporta al lado izquierdo
      // establezco una nueva velocidad
      this.v = random( 1, 5 );
    }
  
  }
  
  dibujar(){
    push();  //buena practica cuando trabajamos con clases/objetos
    fill( 200, 0, 0 );
    rect( this.x, this.y + 5, this.t*2, this.t );
    //fill( 255 );
    //text( this.v, this.x, this.y+this.t/2 );
    pop();
  }

  
}
