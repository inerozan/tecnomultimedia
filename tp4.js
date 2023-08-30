    //TP4
    //Alumna Ines Rozankovic
    //Legajo 91470/0
    //link a video explicativo: 

let playa, introliloystitch, titulos;
let estado = "menu";


function preload(){
playa = loadImage ("./data/playa.png");

introliloystitch = loadImage ("./data/introliloystitch.png");

titulos = loadImage ("./data/titulos.png");
}


function setup() {
createCanvas(600, 600);
}

function draw() {
  
  if ( estado == "menu" ) {
  inicioYcreditos();  
  //botones("Comenzar", "Creditos");
  }
  
  if ( estado == "creditos" ){    
    text( "Ilustraciones\nEscritora\nCreado", 2, 135, 200, 500);    
    text( "You Tube\nInés Rožanković\nInés Rožanković", 290, 135, 400, 500);  
    //botones("Reiniciar", "");
  }
}
