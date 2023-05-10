    //TP1
    //Alumna Ines Rozankovic
    
    int marcaEnElTiempo;
    
    int estado;
    
    PImage corazon;
    
    PImage charlieandsnoop;
    
    PImage charlesPerro;
    
    PImage imaginarse;
    
    PImage dancing1, dancing2, dancing3, dancing4, dancing5, dancing6, dancing7, dancing8, dancing9, dancing10, dancing11, dancing12, dancing13, dancing14, dancing15, dancing16, dancing17, dancing18,
    dancing19, dancing20, dancing21, dancing22, dancing23, dancing24, dancing25, dancing26, dancing27, dancing28, dancing29, dancing30;
    
    PFont fuenteNueva;
    
    PFont real;
    
    boolean estoyDentroDeLaZona;
    
    String textoUno = "Snoopy (creado en 1950 por el historietista Charles Schulz) \n" +
    "es junto a Charlie Brown, el personaje principal de la tira cómica\n" +
  "Peanuts, conocida en castellano bajo los títulos Charlie \n" +
  "Brown y Snoopy.  \n";
  
  String textoDos = "Snoopy es un perro de raza Beagle inspirado en su propio perro Spike. \n" +
    "No logró ponerle este nombre al personaje porque ya existía un cómic de igual\n" +
    "nombre, por lo que terminó siendo Snoopy.\n";
  
    String textoTres = "Snoopy no es tu beagle promedio. Es un amante de los libros y un \n" +
    "escritor de libros. Es un coleccionista de bellas artes y un conocedor \n" +
    "de cerveza de raíz. Además, su imaginación imparable ayuda a mantener \n" +
    "su vida todo menos ordinaria.\n" +
    "¿Qué le interesa? \n";

  String textoComer = "Snoopy nunca olvida\n" + 
  "cuándo es hora de comer y, \n"+
  "a menudo, celebra la ocasión\n" + 
  "con un baile alegre.\n";
  
    String textoEscribir = "Como autor mundialmente \n" + 
  "famoso, Snoopy siempre \n"+
  "está tratando de escribir\n" + 
  " la “gran novela\n" +
  "estadounidense”\n";
  
     String textoNacer = "Nació en la granja de\n" + 
  " cachorros “Daisy Hill”\n"+
  " junto con sus \n" + 
  " 7 hermanos Spike, Andy,\n" +
  "  Marbles, Belle, Rover,\n" +
  "  Molly y Olaf.\n";
  
       String textoImagine = " A Snoopy le encanta fantasear\n" + 
  "con ser varios personajes,\n"+
  " especialmente el Flying Ace\n" + 
  "(piloto militar) de\n" +
  " la Primera Guerra\n" +
  " Mundial.\n";
  
  
    void setup() {
      size(640, 480);
      
    estado = 0; 
     
     corazon = loadImage ("Corazon.png");
     
     charlieandsnoop = loadImage ("charlieandsnoop.png");
     
     charlesPerro = loadImage ("charlesPerro.jpg");
     
     imaginarse = loadImage ("imaginarse.png");
     
     dancing1 = loadImage ("dancing1.png");
     
     dancing2 = loadImage ("dancing2.png");
     
     dancing3 = loadImage ("dancing3.png");
     
     dancing4 = loadImage ("dancing4.png");
     
     dancing5 = loadImage ("dancing5.png");
     
     dancing6 = loadImage ("dancing6.png");
     
     dancing7 = loadImage ("dancing7.png");
     
     dancing8 = loadImage ("dancing8.png");
     
     dancing9 = loadImage ("dancing9.png");
     
     dancing10 = loadImage ("dancing10.png");
     
     dancing11 = loadImage ("dancing11.png");
     
     dancing12 = loadImage ("dancing12.png");
     
     dancing13 = loadImage ("dancing13.png");
     
     dancing14 = loadImage ("dancing14.png");
     
     dancing15 = loadImage ("dancing15.png");
     
     dancing16 = loadImage ("dancing16.png");
     
     dancing17 = loadImage ("dancing17.png");
     
     dancing18 = loadImage ("dancing18.png");
     
     dancing19 = loadImage ("dancing19.png");
     
     dancing20 = loadImage ("dancing10.png");
     
     dancing21 = loadImage ("dancing21.png");
     
     dancing22 = loadImage ("dancing22.png");
     
     dancing23 = loadImage ("dancing23.png");
     
     dancing24 = loadImage ("dancing24.png");
     
     dancing25 = loadImage ("dancing25.png");
           
     dancing26 = loadImage ("dancing26.png");
     
     dancing27 = loadImage ("dancing27.png");
     
     dancing28 = loadImage ("dancing28.png");
     
     dancing29 = loadImage ("dancing29.png");
     
     dancing30 = loadImage ("dancing30.png");
     
     fuenteNueva = loadFont("vogue.vlw");
     
     real = loadFont("real.vlw");
     
    }

void draw(){
  
    int diferenciaTemporal = millis() - marcaEnElTiempo;
  
  //maquina de estados
  if( estado == 0 ){  //ESTADO
    background( 255 );
    //
    
      textFont(fuenteNueva); 
    fill(0);
    textSize(120);
    text("Snoopy", 125, 150 ); 
    image (corazon, 190, 250, 250, 250); 

    
    if( diferenciaTemporal >= 5000 ){  
      estado = 1;
      marcaEnElTiempo = millis();
    }
    //
  }else if (estado == 1 ){
    background( 255 ); 
    //
    
      textSize(29); 
    textFont(real);
    fill(0);
    textAlign(CENTER);
    text(textoUno, 320, 100);
    
    image(charlieandsnoop, 140, 180, 340, 300);

    
    if( diferenciaTemporal >= 5*1000 ){  //5 segundos
      estado = 2;
      marcaEnElTiempo = millis();      
    }   
    //
  }else if (estado == 2 ){
    background( 255 );  
    //
    
    textSize(29); 
    textFont(real);
    fill(0);
    textAlign(CENTER);
    text(textoDos, 320, 70);
    
     image(charlesPerro, 115, 150, 410, 300);


    if( diferenciaTemporal >= 3*1000 ){ 
      estado = 3;
      marcaEnElTiempo = millis();      
    }   
  
}else if (estado == 3 ){
    background( 255 );  //azul
    //
       
    textSize(29); 
    textFont(real);
    fill(0);
    textAlign(CENTER);
    text(textoTres, 320, 70);
    
    textSize(29); 
    textFont(real);
    fill(0);
    textAlign(CENTER);
    text(textoComer, 120, 190);
    
    textSize(29); 
    textFont(real);
    fill(0);
    textAlign(CENTER);
    text(textoEscribir, 515, 210);
    
    textSize(29); 
    textFont(real);
    fill(0);
    textAlign(CENTER);
    text(textoImagine, 120, 310);
    
    textSize(29); 
    textFont(real);
    fill(0);
    textAlign(CENTER);
    text(textoNacer, 525, 350);
    
    image(imaginarse, 120, 120, 410, 370);
    
    if( diferenciaTemporal >= 10000 ){  //10 segundos
      estado = 4;
      marcaEnElTiempo = millis();      
    }   

}else if (estado == 4 ){
    background( 255 );  
    //

    textSize(40);
    textFont(real); 
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
    
     textSize(40);
    textFont(real); 
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
    
     textSize(40);
    textFont(real); 
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
    
     textSize(40);
    textFont(real); 
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
    
     textSize(40);
    textFont(real); 
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
    
     textSize(40);
    textFont(real); 
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
    
     textSize(40);
    textFont(real); 
    fill(0);
    text("Y por supuesto,¡ama bailar!", 315, 240 ); 
    
    image(dancing5, 126, 0, 230, 190);
    
    image(dancing5, 274, 275, 230, 190);
    
    if( diferenciaTemporal >= 300 ){  
      estado = 11;
      marcaEnElTiempo = millis();      
    }   
       }else if (estado == 11 ){
    background( 255 );
    //
    
     textSize(40);
    textFont(real); 
    fill(0);
    text("Y por supuesto,¡ama bailar!", 315, 240 ); 
    
    image(dancing5, 147, 0, 230, 190);
    
    image(dancing5, 253, 275, 230, 190);
    
    if( diferenciaTemporal >= 300 ){  
      estado = 12;
      marcaEnElTiempo = millis();      
    }   
           }else if (estado == 12 ){
    background( 255 );
    //
    
     textSize(40);
    textFont(real); 
    fill(0);
    text("Y por supuesto,¡ama bailar!", 315, 240 ); 
    
    image(dancing5, 168, 0, 230, 190);
    
    image(dancing5, 232, 275, 230, 190);
    
    if( diferenciaTemporal >= 300 ){  
      estado = 13;
      marcaEnElTiempo = millis();      
    }   
          }else if (estado == 13 ){
    background( 255 );
    //
    
     textSize(40);
    textFont(real); 
    fill(0);
    text("Y por supuesto,¡ama bailar!", 315, 240 ); 
    
    image(dancing6, 189, 0, 230, 190);
    
    image(dancing6, 211, 275, 230, 190);
    
    if( diferenciaTemporal >= 300 ){  
      estado = 14;
      marcaEnElTiempo = millis();      
    }
    }else if (estado == 14 ){
    background( 255 );
    //
    
     textSize(40);
    textFont(real); 
    fill(0);
    text("Y por supuesto,¡ama bailar!", 315, 240 ); 
    
    image(dancing7, 210, 0, 230, 190);
    
    image(dancing7, 190, 275, 230, 190);
    
    if( diferenciaTemporal >= 300 ){  
      estado = 15;
      marcaEnElTiempo = millis();      
    }   
}
}
