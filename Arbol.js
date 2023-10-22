class Arbol {

  contructor() {
    this.posX = 200;
    this.posY = 200;
    this.miColor = color(255, 0, 0);
  }

  dibujar() {
    fill(this.miColor);
    rect(this.posX, this.posY, 50, 50);
  }
}
