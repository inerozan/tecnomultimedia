    //TP3
    //Alumna Ines Rozankovic
    //Legajo 91470/0
    //link a video explicativo: https://youtu.be/7XBkbiEjiJA

PImage ilu1;
PFont fuenteNueva;
int estado; 
int c = 15;
PImage[] historia =  new PImage[c];
String[] textos = new String[c];


void setup() {
  size (600, 600);
  estado = 0;
  ilu1 = loadImage ("ilu1.png"); 
  fuenteNueva = loadFont("vogue.vlw");

  //imagenes!
  for ( int i = 0; i < c; i++ ) {
    historia[i] = loadImage( "data/historia" + i + ".png" );
  }
  
  //textos!
  textos = loadStrings("textos.txt");
}

void draw() {

  switch(estado) {
  case 0:
    inicioYcreditos();
    text("La Princesa y el Guisante", 300, 80);
    botones("Comenzar", "Créditos");
    break; 

  case 1:
    image(historia[0], 0, 0, 1000, 600 ); 
    funcionesTxt( 80, 10, 450, 60);  
    text( textos[0], 80, 20, 450, 150 );
    botones("Siguiente", "");
    break;

  case 2:
    image(historia[1], -90, 0, 1000, 600 ); 
    funcionesTxt(80, 10, 450, 60);  
    text( textos[1], 80, 20, 450, 150);
    botones("Si", "No");
    break;  

  case 3:
    image(historia[2], -400, 0, 1000, 600 ); 
    funcionesTxt(80, 10, 450, 60);  
    text( textos[2], 80, 20, 450, 150);
    botones("Siguiente", "");
    break;  

  case 4:
    image(historia[3], -150, 0, 1000, 600 ); 
    funcionesTxt(80, 10, 450, 60);  
    text( textos[3], 80, 20, 450, 150);
    botones("A su cuarto", "Come");
    break;

  case 5:
    image(historia[4], -130, 0, 1000, 600 ); 
    funcionesTxt(80, 10, 450, 100);  
    text( textos[4], 80, 20, 450, 150);
    botones("¿Qué será?", "");
    break;  

  case 6:
    image(historia[5], -200, 0, 1000, 600 ); 
    funcionesTxt(80, 10, 450, 100);  
    text( textos[5], 80, 20, 450, 150);
    botones("Si", "No");
    break;  

  case 7:
    image(historia[6], -130, 0, 1000, 600 ); 
    funcionesTxt(80, 10, 450, 100);  
    text( textos[6], 80, 20, 450, 150);
    botones("Siguiente", "");
    break;

  case 8:
    image(historia[7], -355, 0, 1000, 600 ); 
    funcionesTxt(80, 10, 450, 80);  
    text( textos[7], 80, 20, 450, 150);
    botones("Si", "No");
    break;  

  case 9:
    image(historia[8], -300, 0, 1000, 600 ); 
    funcionesTxt(80, 10, 450, 100);  
    text( textos[8], 80, 20, 450, 150);
    botones("Siguiente", "");
    break;  

  case 10:
    image(historia[9], -200, 0, 1000, 600 ); 
    funcionesTxt(80, 10, 450, 60);  
    text( textos[9], 80, 20, 450, 150);
    botones("Reiniciar", "Créditos");
    break;

  case 11:
    image(historia[10], -90, 0, 1000, 600 ); 
    funcionesTxt(80, 10, 450, 60);  
    text( textos[10], 80, 20, 450, 150);
    botones("Siguiente", "");
    break;  

  case 12:
    image(historia[11], 0, 0, 600, 600 ); 
    funcionesTxt(80, 10, 450, 60);  
    text( textos[11], 80, 20, 450, 150);
    botones("Reiniciar", "Créditos");
    break;  

  case 13:
    image(historia[12], -130, 0, 1000, 600 ); 
    funcionesTxt(80, 10, 450, 60);  
    text( textos[12], 80, 20, 450, 150);    
    botones("Reiniciar", "Créditos");
    break;

  case 14:
    image(historia[13], -240, 0, 1000, 600 ); 
    funcionesTxt(80, 10, 450, 60);  
    text( textos[13], 80, 20, 450, 150);
    botones("Reiniciar", "Créditos");
    break;  

  case 15:
    image(historia[14], -300, 0, 1000, 600 ); 
    funcionesTxt(80, 10, 450, 80);  
    text( textos[14], 80, 20, 450, 150);
    botones("Siguiente", "");
    break;

  case 16:    
    inicioYcreditos();
    text("Créditos", 300, 80);
    textSize(25);
    text( "Ilustraciones\nEscritora\nCreado", 2, 135, 200, 500);    
    text( "You Tube\nInés Rožanković\nInés Rožanković", 290, 135, 400, 500);  

    botones("Reiniciar", "");
    break;
  }
}



void mousePressed() {

  if ( estado == 0 ) {
    if (botonApretado(130, 500)) {
      estado = 1;
    } else if (botonApretado(490, 500)) {
      estado = 16;
    }
  } else 

  if ( estado == 1 ) {
    if (botonApretado(300, 500)) {
      estado = 2;
    }
  } else 

  if ( estado == 2 ) {
    if (botonApretado(130, 500)) {
      estado = 11;
    } else if (botonApretado(490, 500)) {
      estado = 3;
    }
  } else 

  if ( estado == 3 ) {
    if (botonApretado(300, 500)) {
      estado = 4;
    }
  } else 

  if ( estado == 4 ) {
    if (botonApretado(130, 500)) {
      estado = 13;
    } else if (botonApretado(490, 500)) {
      estado = 5;
    }
  } else if ( estado == 5 ) {
    if (botonApretado(300, 500)) {
      estado = 6;
    }
  } else 

  if ( estado == 6 ) {
    if (botonApretado(130, 500)) {
      estado = 7;
    } else 

    if (botonApretado(490, 500)) {
      estado = 14;
    }
  } else 

  if ( estado == 7 ) {
    if (botonApretado(300, 500)) {
      estado = 8;
    }
  } else 

  if ( estado == 8 ) {
    if (botonApretado(130, 500)) {
      estado = 9;
    } else if (botonApretado(490, 500)) {
      estado = 15;
    }
  } else 

  if ( estado == 9 ) {
    if (botonApretado(300, 500)) {
      estado = 10;
    }
  } else 

  if ( estado == 10 ) {
    if (botonApretado(130, 500)) {
      estado = 0;
    } else if (botonApretado(490, 500)) {
      estado = 16;
    }
  } else 

  if ( estado == 11 ) {
    if (botonApretado(300, 500)) {
      estado = 12;
    }
  } else 

  if ( estado == 12 ) {
    if (botonApretado(130, 500)) {
      estado = 0;
    } else if (botonApretado(490, 500)) {
      estado = 16;
    }
  } else 

  if ( estado == 13 ) {
    if (botonApretado(130, 500)) {
      estado = 0;
    } else if (botonApretado(490, 500)) {
      estado = 16;
    }
  } else 

  if ( estado == 14 ) {
    if (botonApretado(130, 500)) {
      estado = 0;
    } else if (botonApretado(490, 500)) {
      estado = 16;
    }
  } else 

  if ( estado == 15) {
    if (botonApretado(300, 500)) {
      estado = 14;
    }
  } else

    if ( estado == 16) {
      if (botonApretado(300, 500)) {
        estado = 0;
      }
    }
}
