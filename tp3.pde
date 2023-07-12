
PImage ilu1;
PFont fuenteNueva;
int estado; 
int c = 15;
PImage[] historia =  new PImage[c];
//boolean apreteBotonMenu;

void setup() {
  size (600, 600);
  estado = 0;


  ilu1 = loadImage ("ilu1.png"); 

  fuenteNueva = loadFont("vogue.vlw");

  for ( int i = 0; i < c; i++ ) {
    historia[i] = loadImage( "data/historia" + i + ".png" );
  }
}

void draw() {

  switch(estado) {
  case 0:
    background(#FFFDE5);
    image(ilu1, 100, 90, 300, 500);
    textFont(fuenteNueva); 
    fill(0);
    textSize(45);
    textAlign(CENTER);
    text("La Princesa y el Guisante", 300, 80);
    break; 

  case 1:

    image(historia[0],0, 0, 1000, 600 ); 
//miTextoDeEstado( estado, 30 );

    break;
    
      case 2:

    image(historia[1],-90, 0, 1000, 600 ); 

    break;  
    
    case 3:

    image(historia[2],-400, 0, 1000, 600 ); 

    break;  
    
    case 4:

    image(historia[3],-150, 0, 1000, 600 ); 

    break;
   
    case 5:

    image(historia[4],-130, 0, 1000, 600 ); 

    break;  
    
    case 6:

    image(historia[5],-200, 0, 1000, 600 ); 

    break;  
    
    case 7:

    image(historia[6],-130, 0, 1000, 600 ); 

    break;
    
    case 8:

    image(historia[7],-355, 0, 1000, 600 ); 

    break;  
    
    case 9:

    image(historia[8],-300, 0, 1000, 600 ); 

    break;  
    
    case 10:

    image(historia[9],-200, 0, 1000, 600 ); 

    break;
    
    case 11:

    image(historia[10],-90, 0, 1000, 600 ); 

    break;  
    
    case 12:

    image(historia[11],-200, 0, 1000, 600 ); 

    break;  
    
    case 13:

    image(historia[12],-130, 0, 1000, 600 ); 

    break;
    
    case 14:

    image(historia[13],-355, 0, 1000, 600 ); 

    break;  
    
    case 15:

    image(historia[14],-300, 0, 1000, 600 ); 

    break;  
    
  }
}



void mousePressed() {

  if( estado == 0 ){
    estado = 1;
  }else if( estado == 1 ){
    estado = 2;
 }else if( estado == 2 ){
    estado = 3;
 }else if( estado == 3 ){
    estado = 4;
 }else if( estado == 4 ){
    estado = 5;
 }else if( estado == 5 ){
    estado = 6;
  }else if( estado == 6 ){
    estado = 7;
 }else if( estado == 7 ){
    estado = 8;
 }else if( estado == 8 ){
    estado = 9;
 }else if( estado == 9 ){
    estado = 10;
}
}
