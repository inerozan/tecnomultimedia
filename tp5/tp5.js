 //TP5 RECUPERATORIO
 //Alumna Ines Rozankovic
 //Legajo 91470/0
 //link a video explicativo: https://youtu.be/yOZTKvjDamE

let objJuego;
let foto = [];
let texto = [];
let titulo;
let regular;

function setup() {
  createCanvas(600, 600);
  
  objJuego = new Juego(foto, texto, titulo, regular); 
}

function draw() { 
  background(200,200,0);
  objJuego.dibujar();
  objJuego.actualizar();
}

function preload() {    
  for( let i = 0 ; i < 8 ; i++ ){
    foto[i] = loadImage('assets/historia'+ i +'.png');    //ARREGLO DE IMAGENES
  } 
  
  texto = loadStrings('assets/texto.txt');  //ARREGLO DE TEXTOS
  
  titulo = loadFont('assets/titulo.ttf'); //TIPOGRAFIA
  
  regular = loadFont('assets/regular.ttf');  //TIPOGRAFIA
}

function mousePressed(){
  objJuego.botonPresionado(mousePressed); 
}

function keyPressed() {
  objJuego.teclaPresionada(keyCode);
}
