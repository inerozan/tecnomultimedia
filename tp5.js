 //TP5 RECUPERATORIO
 //Alumna Ines Rozankovic
 //Legajo 91470/0
 //link a video explicativo: 

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
}

function preload() {  
  for( let i = 0 ; i < 6 ; i++ ){
    foto[i] = loadImage('assets/historia'+ i +'.png');    
  } 
  
  texto = loadStrings('assets/texto.txt');
  
  titulo = loadFont('assets/titulo.ttf');
  
  regular = loadFont('assets/regular.ttf');
  
}

function mousePressed(){
  objJuego.botonPresionado(mousePressed); 
}
