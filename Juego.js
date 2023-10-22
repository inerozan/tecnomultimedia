class Juego {

  constructor() {
    this.crearPrincipe();
    this.crearArboles();
  }

  dibujar() {

    //principe
    this.principe.dibujar();

    //arboles
    for (let i=1; i< 4; i++) {
      this.arboles[i].dibujar();
    }
  }

  crearPrincipe() {
    this.principe = new Principe();
  }

  crearArboles() {
    this.Arboles = [];
    for (let i=1; i< 4; i++) {
      this.arboles[i] = new Arbol(i*200, 100);
    }
  }
}
