    //TP4
    //Alumna Ines Rozankovic
    //Legajo 91470/0
    //link a video explicativo: 

let estado,x=250;
let vec= [];
let juego = [];
let c = 16;


function preload(){

  for ( let i = 0; i < c; i++ ) {
    juego[i] = loadImage( "assets/juego" + i + ".png" );
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
    image(juego[4], 400, 490, 170, 65);
    image(juego[15], 30, 490, 170, 65);
   
  }else
   if(estado == 'juego'){
      image(juego[5], 0, 0);
      manchas(); 
      image(juego[6], x, 450, 100,140);
      colision();
      textSize(20);
      text(cant,90,90);
      tj=millis()-tiemp;
      text(int(tj/1000),490,90);
      
      x = constrain(x, 50, 450);
      if(cant == 3){
       estado='perder';
      }else
       if(tj> 30000){
         estado='ganar';
       }  
     
    }else
     if(estado== 'perder'){
       
    image(juego[0], 0, 0, 1000, 700);
    image(juego[9], 200, 180, 200, 280);
        text("PERDISTE",200,190);
    
    image(juego[3], 210, 490, 170, 65);
     }  
     else
     if(estado== 'ganar'){
       
    image(juego[0], 0, 0, 1000, 700);
    image(juego[8], 140, 170, 300, 270);
        text("G A N A S T E",200,190);
    
    image(juego[3], 210, 490, 170, 65);
     }else
   if(estado == 'instrucciones'){
     inicioycreditos();
    ellipse(300, 520, 100, 50);   
    image(juego[10], 210, 490, 170, 65);
    
   }else
   if(estado == 'creditos'){
     inicioycreditos();
    ellipse(300, 520, 100, 50);   
    image(juego[10], 210, 490, 170, 65);
   }
}
 

function mousePressed() {
 if((estado=='menu')&&(dist(mouseX,mouseY,500, 520) < 50)){
   estado = 'juego';
   cant=0;
   reiniciar(-1000,100);
 }else
  if((estado=='menu')&&(dist(mouseX,mouseY,150, 520) < 50)){
   estado = 'instrucciones';
   
 }else
   if((estado=='perder')&&(dist(mouseX,mouseY,300, 520) < 50)){
     estado= 'creditos';
     
   }else
   if((estado=='creditos')&&(dist(mouseX,mouseY,300, 520) < 50)){
     estado= 'menu';
     
   }else
   if((estado=='ganar')&&(dist(mouseX,mouseY,300, 520) < 50)){
     estado= 'creditos';
     
   }else
   if((estado=='instrucciones')&&(dist(mouseX,mouseY,300, 520) < 50)){
     estado= 'menu';
   }
}


function keyPressed() {
  if (keyCode === LEFT_ARROW) {
    x = x-200;
  } else if (keyCode === RIGHT_ARROW) {
    x = x + 200;
  }
}
