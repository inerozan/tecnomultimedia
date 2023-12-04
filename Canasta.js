class Canasta {
  constructor(posX, posY, imgC) {
    this.posXC = posX; //width/2
    this.posYC = posY; //300
    this.tamC=200;
    this.canasta=imgC;
  }

  dibujar() {
    push();
    imageMode(CENTER)
      image (this.canasta, this.posXC, this.posYC, this.tamC, this.tamC);
    pop();
  }

  //puntosSumando() {
  //  return this.contador;
  //}
  teclaPresionada(keyCode) {
    if (keyCode == LEFT_ARROW && this.posXC > 100) {
      this.moverIzquierda();
    } else if (keyCode == RIGHT_ARROW && this.posXC < width-100) {
      this.moverDerecha();
    }
  }

  moverDerecha() {
    this.posXC += 50;
  }

  moverIzquierda() {
    this.posXC -= 50;
  }
  
  reiniciar(){
  this.posXC = posX; //width/2
    this.posYC = posY; //300
    this.tamC=200;
  }
}
