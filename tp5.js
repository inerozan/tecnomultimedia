let objJuego;

function setup() {
  createCanvas(600, 600);
  objJuego = new Juego();
}


function draw() {
  background(255);
  objJuego.dibujar();
  objJuego.actualizar();
}
