    //TP1
    //Alumna Ines Rozankovic
    //Legajo 91470/0
    
    int marcaEnElTiempo;
    
    int estado;
    
    float posY, opacidad; 
    
    PImage corazon, charlieandsnoop, imaginarse, amigos, arg, bye, emilioFlor;
    
    PImage dancing1, dancing2, dancing3, dancing4, dancing5, dancing10, dancing13, dancing17, dancing23, dancing29;
    
    PFont fuenteNueva, real;
    
    String textoUno, textoDos, textoComer, textoEscribir, textoNacer, textoImagine, textoEmilio;
  
   
    void setup() {
      size(640, 480);
      
     estado = 0; 
  
     corazon = loadImage ("Corazon.png");
     
     charlieandsnoop = loadImage ("charlieandsnoop.png");
     
     imaginarse = loadImage ("imaginarse.png");
     
     dancing1 = loadImage ("dancing1.png");
     
     dancing2 = loadImage ("dancing2.png");
     
     dancing3 = loadImage ("dancing3.png");
     
     dancing4 = loadImage ("dancing4.png");
     
     dancing5 = loadImage ("dancing5.png");
     
     dancing10 = loadImage ("dancing10.png");
     
     dancing13 = loadImage ("dancing13.png");
     
     dancing17 = loadImage ("dancing17.png");
     
     dancing23 = loadImage ("dancing23.png");
     
     dancing29 = loadImage ("dancing29.png");
     
     emilioFlor = loadImage ("emilioFlor.png");
     
     arg = loadImage ("arg.png");
     
     amigos = loadImage ("Amigos.png");
     
     bye = loadImage ("bye.png");
     
     fuenteNueva = loadFont("vogue.vlw");
     
     real = loadFont("real.vlw");
     
     opacidad = 0.5;
     
     posY = 0; 
     
     textoUno = "Snoopy (creado en 1950 por el historietista Charles Schulz) \n" +
    "es junto a Charlie Brown, el personaje principal de la tira cómica\n" +
  "Peanuts, conocida en castellano bajo los títulos Charlie \n" +
  "Brown y Snoopy.  \n";
     
     textoDos = "Snoopy es un Beagle inspirado en su propio perro Spike. Pero ya \n" +
   "existía un cómic de igual nombre, por lo que terminó siendo Snoopy.\n";
  
      textoComer = "Snoopy nunca olvida\n" + 
    "cuándo es hora de comer y, \n"+
    "a menudo, celebra la ocasión\n" + 
    "con un baile alegre.\n";
    
    textoEscribir = "Como autor mundialmente \n" + 
  "famoso, Snoopy siempre \n"+
  "está tratando de escribir\n" + 
  " la “gran novela\n" +
  "estadounidense”.\n";
  
    textoNacer = "Nació en la granja de\n" + 
  " cachorros “Daisy Hill”\n"+
  " junto con sus \n" + 
  " 7 hermanos Spike, Andy,\n" +
  "  Marbles, Belle, Rover,\n" +
  "  Molly y Olaf.\n";
  
    textoImagine = " A Snoopy le encanta fantasear\n" + 
  "con ser varios personajes,\n"+
  " especialmente el Flying Ace\n" + 
  "(piloto militar) de\n" +
  " la Primera Guerra\n" +
  " Mundial.\n";
  
  textoEmilio = "Tiene muchos amigos. Snoopy tiene un amigo leal llamado Emilio, un\n" +
  "un pajaro que para él es su hermano pequeño.\n";
  
    }

void draw(){
  
    int diferenciaTemporal = millis() - marcaEnElTiempo;
  
  //maquina de estados
  if( estado == 0 ){  //Inicio Snoopy
    background( 255 );
    //
    
    textFont(fuenteNueva); 
    fill(0);
    textSize(120);
    textAlign(CENTER);
    text("Snoopy", 315, 150 ); 
    image (corazon, 190, 240, 250, 250); 

    
    if( diferenciaTemporal >= 4*1000 ){  
      estado = 1;
      marcaEnElTiempo = millis();
    }
    //
  }else if (estado == 1 ){ // Diapositiva 1
    background( 255 ); 
    //
    
    opacidad = opacidad + 2; 
    
      textSize(29); 
    textFont(real);
    fill(0, opacidad);
    textAlign(CENTER);
    text(textoUno, 320,100);
    
    image(charlieandsnoop, 140, 180, 340, 300);

    
    if( diferenciaTemporal >= 7*1000 ){  //5 segundos
      estado = 2;
      marcaEnElTiempo = millis();      
    }   
    //
  }else if (estado == 2 ){ // Diapositiva 2
    background( 255 );  
    //
    
    textSize(29); 
    textFont(real);
    fill(0);
    textAlign(CENTER);
    text(textoDos, 320, posY/4);
    
    posY = posY + 0.7;
    
     image(arg, 45, 140, 520, 320);


    if( diferenciaTemporal >= 9*1000 ){ 
      estado = 3;
      marcaEnElTiempo = millis();      
    }   
  
}else if (estado == 3 ){ // Diapositiva 3
    background( 255 );  
    //
       
    textFont(real, 24);
    fill(0);
    textAlign(CENTER);
    text("¿Qué le interesa?", 320, 100);
    
    //
    
    textFont(real);
    textAlign(CENTER);
   fill(0);
    text(textoComer, 130, 170);
    
    textFont(real);
    fill(0);
    textAlign(CENTER);
    text(textoEscribir, 515, 190);
    
    textFont(real);
    fill(0);
    textAlign(CENTER);
    text(textoImagine, 120, 290);
    
    textFont(real);
    fill(0);
    textAlign(CENTER);
    text(textoNacer, 538, 330);
    
    image(imaginarse, 120, 120, 410, 370);
    
    if( diferenciaTemporal >= 11*1000 ){  //10 segundos
      estado = 4;
      marcaEnElTiempo = millis();      
    }   

}else if (estado == 4 ){ // Diapositiva 4 BAILAR!
    background( 255 );  
    //
    
    textFont(real, 18); 
    fill(0);
    text("Y por supuesto,¡ama bailar!", 315, 240 ); 
    
    image(dancing1, 0, 0, 230, 190);
    
    image(dancing1, 400, 275, 230, 190);
    
    if( diferenciaTemporal >= 300 ){  
      estado = 5;
      marcaEnElTiempo = millis();      
    }   

}else if (estado == 5 ){
    background( 255 );
    //

    textFont(real, 18); 
    fill(0);
    text("Y por supuesto,¡ama bailar!", 315, 240 ); 
    
    image(dancing2, 21, 0, 230, 190);
    
    image(dancing2, 379, 275, 230, 190);
    
    if( diferenciaTemporal >= 300 ){  
      estado = 6;
      marcaEnElTiempo = millis();      
    }   
    }else if (estado == 6 ){
    background( 255 );
    //
    
    textFont(real, 18); 
    fill(0);
    text("Y por supuesto,¡ama bailar!", 315, 240 ); 
    
    image(dancing3, 42, 0, 230, 190);
    
    image(dancing3, 358, 275, 230, 190);
    
    if( diferenciaTemporal >= 300 ){  
      estado = 7;
      marcaEnElTiempo = millis();      
    }   
     }else if (estado == 7 ){
    background( 255 );
    //
    
    textFont(real, 18); 
    fill(0);
    text("Y por supuesto,¡ama bailar!", 315, 240 ); 
    
    image(dancing4, 63, 0, 230, 190);
    
    image(dancing4, 337, 275, 230, 190);
    
    if( diferenciaTemporal >= 300 ){  
      estado = 8;
      marcaEnElTiempo = millis();      
    }  
      }else if (estado == 8 ){
    background( 255 );
    //
    
    textFont(real, 18); 
    fill(0);
    text("Y por supuesto,¡ama bailar!", 315, 240 ); 
    
    image(dancing5, 84, 0, 230, 190);
    
    image(dancing5, 316, 275, 230, 190);
    
    if( diferenciaTemporal >= 300 ){  
      estado = 9;
      marcaEnElTiempo = millis();      
    }   
      }else if (estado == 9 ){
    background( 255 );
    //
    
    textFont(real, 18); 
    fill(0);
    text("Y por supuesto,¡ama bailar!", 315, 240 ); 
    
    image(dancing5, 105, 0, 230, 190);
    
    image(dancing5, 295, 275, 230, 190);
    
    if( diferenciaTemporal >= 300 ){  
      estado = 10;
      marcaEnElTiempo = millis();      
    }   
     }else if (estado == 10 ){
    background( 255 );
    //
    
    textFont(real, 18); 
    fill(0);
    text("Y por supuesto,¡ama bailar!", 315, 240 ); 
    
    image(dancing10, 126, 0, 230, 190);
    
    image(dancing10, 274, 275, 230, 190);
    
    if( diferenciaTemporal >= 300 ){  
      estado = 11;
      marcaEnElTiempo = millis();      
    }   
       }else if (estado == 11 ){
    background( 255 );
    //
    
    textFont(real, 18); 
    fill(0);
    text("Y por supuesto,¡ama bailar!", 315, 240 ); 
    
    image(dancing13, 147, 0, 230, 190);
    
    image(dancing13, 253, 275, 230, 190);
    
    if( diferenciaTemporal >= 300 ){  
      estado = 12;
      marcaEnElTiempo = millis();      
    }   
           }else if (estado == 12 ){
    background( 255 );
    //
    
    textFont(real, 18); 
    fill(0);
    text("Y por supuesto,¡ama bailar!", 315, 240 ); 
    
    image(dancing17, 168, 0, 230, 190);
    
    image(dancing17, 232, 275, 230, 190);
    
    if( diferenciaTemporal >= 300 ){  
      estado = 13;
      marcaEnElTiempo = millis();      
    }   
          }else if (estado == 13 ){
    background( 255 );
    //
    
    textFont(real, 18); 
    fill(0);
    text("Y por supuesto,¡ama bailar!", 315, 240 ); 
    
    image(dancing23, 189, 0, 230, 190);
    
    image(dancing23, 211, 275, 230, 190);
    
    if( diferenciaTemporal >= 300 ){  
      estado = 14;
      marcaEnElTiempo = millis();      
    }
    }else if (estado == 14 ){
    background( 255 );
    //
    
    opacidad = opacidad - 9; 
    
    textFont(real, 18); 
    fill(0, opacidad);
    text("Y por supuesto,¡ama bailar!", 315, 240 ); 
    
    image(dancing29, 210, 0, 230, 190);
    
    image(dancing29, 190, 275, 230, 190);
    
    if( diferenciaTemporal >= 1500 ){  
      estado = 15;
      marcaEnElTiempo = millis();      
    }   
   }else if (estado == 15 ){ // Diapositiva 5
    background( 255 );
    //
        
    textFont(real, 18); 
    fill(0);
    textAlign(CENTER);
    text(textoEmilio, 315, posY/4 ); 
    
    posY = posY + 0.7;
    
    image(emilioFlor, 20, 130, 600, 420);
    
    if( diferenciaTemporal >= 5*1000 ){  
      estado = 16;
      marcaEnElTiempo = millis();      
    }
   }else if (estado == 16 ){ // Diapositiva 6
    background( 255 );
    //
    
    
    textFont(real, 18); 
    fill(0);
    textAlign(CENTER);
    text("Y como olvidar a Peanuts, los amigos de Charlie.", 315, 180); 
    
    image(amigos, 35, 240, 580, 220);
    
    if( diferenciaTemporal >= 5*1000 ){  
      estado = 17;
      marcaEnElTiempo = millis();      
    }  
    }else if (estado == 17 ){ // Pantalla de REINICIO
    background( 255 );
    //
    
    image(bye, -40, -20, 600, 570);   
    
    strokeWeight(2);
    fill(#FFED1F);
    ellipse(435,370,150,75);
    textAlign(CENTER);
    textFont(real, 22);
    fill(0);
    text("reiniciar", 436, 375); 
        
    if (dist(mouseX, mouseY, 435, 370) < 25) {
      cursor(HAND);
    fill(#CE1F1F);
    ellipse(435,370,150,75);
    textAlign(CENTER);
    textFont(real, 22);
    fill(0);
    text("reiniciar", 436, 375); 
        
    }else{
      cursor(ARROW);
    }
    }
}

void mousePressed(){
  if ( estado == 17){
  if(dist(mouseX, mouseY, 435,370) < 25){
   estado = 0;
   
   opacidad = 0.5; 
   posY = 0; 
   
    marcaEnElTiempo = millis();
   }
  }
  }
