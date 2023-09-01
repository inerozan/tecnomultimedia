    //TP4
    //Alumna Ines Rozankovic
    //Legajo 91470/0
    //link a video explicativo: 

let playa, introliloystitch, titulos;

let x1, y1;  //enemigo
let x2, y2;  //player
let x3, y3;  //boton
let estado = "menu";


function preload(){
playa = loadImage ("./data/playa.png");

introliloystitch = loadImage ("./data/introliloystitch.png");

titulos = loadImage ("./data/titulos.png");
}


function setup() {
createCanvas(600, 600);

  //IMPORTANTISIMO: darle primer valor a las variables
  x1 = 0;
  y1 = 300;

  x2 = width/2;
  y2 = height;

}

function draw() {
  
  if ( estado == "menu" ) {
  fill(0);  
  circle( width/2, height/2, 100, 100 );
  inicioYcreditos();  
  
    if ( mouseIsPressed ) {
      //mi boton
      if ( dist(width/2, height/2, mouseX, mouseY) < 50 ) {  //50 radio del circle
        estado = "juego";
      }
    }
  } else if ( estado == "juego" ) {
    text( "JUEGO", 100, 100 );

    //actualizo y dibujo el "enemigo"
    x1++;
    if ( x1 > width ) {
      x1 = 0;
      //TIP: podría ademas aumentar la velocidad
    }
  
  }
  
  if ( estado == "creditos" ){    
    text( "Ilustraciones\nEscritora\nCreado", 2, 135, 200, 500);    
    text( "You Tube\nInés Rožanković\nInés Rožanković", 290, 135, 400, 500);
  }
}
