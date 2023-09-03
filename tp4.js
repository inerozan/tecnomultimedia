    //TP4
    //Alumna Ines Rozankovic
    //Legajo 91470/0
    //link a video explicativo: 

let estado,x=250;
let vec= [];
let juego = [];

let c = 15;

function preload(){

  for ( let i = 0; i < c; i++ ) {
    juego[i] = loadImage( "data/juego" + i + ".png" );
  }
}

function setup() {
 createCanvas(600, 600);
 estado='menu';
 for(let i=1; i< 4; i++){
   vec[i] = random(-1100,-90);
 }
}


function draw() {
 
  if(estado == 'menu'){
   inicioycreditos();
   
    image(juego[1], 50, 30, 480, 140);
    ellipse(500, 520, 100, 50);    
    image(juego[4], 400, 490, 170, 65);
    ellipse(100, 520, 100, 50);   
    image(juego[3], 30, 490, 170, 65);
   
  }else
   if(estado == 'juego'){
       image(juego[5], 0, 0);
        image(juego[6], x, 450, 100,140);
      manchas();
     
   }else
   if(estado == 'creditos'){
     inicioycreditos();
    ellipse(300, 520, 100, 50);   
    image(juego[10], 210, 490, 170, 65);
   }

}
 

function mousePressed() {
 if((mouseX > 400)&&(mouseY > 400)){
   estado = 'juego';
   
 }else
  if((mouseX < 200)&&(mouseY > 200)){
   estado = 'creditos';
   
 }
 
}


function keyPressed() {
  if (keyCode === LEFT_ARROW) {
    x = x-200;
  } else if (keyCode === RIGHT_ARROW) {
    x = x + 200;
  }
}
