class Historia {

  constructor(t, r, posX, posY) {
    this.pantalla = "menu";
    this.tam =  t;

    //this.crearMinijuego();
    
  }

  dibujar(imgArray, textoArray) {

    if (this.pantalla=="menu") {
      //this.Minijuego.dibujar();
     image(imgArray[8], -200, 0, 800, 600);

     textSize(32);
     textAlign(CENTER);
     fill(0);
     text("La Ratita Presumida", 300, 100);  
     this.botonCircular(300, 500, 75); 
     this.botonCuadrado(350, 350+30, 284, 284+65, 30, 65);
     
    } 
    
    else if (this.pantalla=="creditos") {
     image(imgArray[16], 0, 0, 600, 600);
      
     text("HISTORIA ORIGINAL: ANONIMO\nVARIACIONES EN LA HISTORIA: DANA URQUIZA\nIMAGENES EXTRAIDAS DE YOUTUBE\nMODIFICACION DE IMAGENES : DANA URQUIZA\n EN PAINT 8)", 90, posY);
    
    }
    
    //EMPIEZA HISTORIA
    else if (this.pantalla=="P01") {
     image(imgArray[3], 0, 0, 600, 600);
     this.cuadradoDeTexto(0, 405, 230, 190);
   
     text(textoArray[0], 15, 430, 200, 200);
    } 
    
    else if (this.pantalla=="P02") {
     image(imgArray[17], 0, 0, 600, 600);
     text(textoArray[1], 200, 200);

    } 
    
    else if (this.pantalla=="P03") {
      
    }
    
    //COMPRA LOS CARAMELOS
    else if (this.pantalla=="P04") {
    }
    
    //COMPRA EL MOÑO
    else if (this.pantalla=="P05") {
    }
    
    //REGALA LA MONEDA
    else if (this.pantalla=="P06") {
    }
    
    //humilde xq le sacan los diente
    else if (this.pantalla=="P07") {
    }
    
    //CAE INTERNADA
    else if (this.pantalla=="P08") {
    }
    
    //SE MUERE
    else if (this.pantalla=="P09") {
     image(imgArray[5], 0, 0, 600, 600);

    } 
    
    //sigue la historia del moño LLEGA EL RATON
    else if (this.pantalla=="P10") {
    } 
    
    //LLEGA GATO
    else if (this.pantalla=="P11") {
    } 
    
    //GATO ATACA
    else if (this.pantalla=="P12") {
    } 
    
    //RATON ESCUCHA GRITOS
    else if (this.pantalla=="P13") {
    } 
    
    //RATON LA RESCATA
    else if (this.pantalla=="P14") {
    } 
    
    //RATITA SE CASA FIN
    else if (this.pantalla=="P15") {
     image(imgArray[11], 0, 0, 600, 600);
    } 
    
    //RATITA SALE EN LAS NOTICIAS
    else if (this.pantalla=="P16") {
     image(imgArray[19], 0, 0, 600, 600);
    } 
    
    //RATITA DESCUBRE Q SON RE TURBIOS
    else if (this.pantalla=="P17") {
    }
    
    //RATITA DESCUBRE Q SON RE HUMILDES
    else if (this.pantalla=="P18"){
    }
    
    //RATITA REFLECCIONA
    else if (this.pantalla=="P19"){
    }
    
    //RATITA SE DEPRIME
    else if (this.pantalla=="P20"){
    }
    
    //RATITA SIGUE ADELANTE
    else if (this.pantalla=="P21"){
    }
    
  }

  cuadradoDeTexto(x1, y1, ancho, alto){
  fill(219, 216, 150, 100);
  stroke(4);
  rect(x1, y1, ancho, alto);  
  
  textAlign(CENTER);
  fill(0);
  textSize(20);
  }


  botonCircular(posX, posY, r) {
    
      //BOTON CREDITO REDONDO
     if (this.estoyDentrodeBotonCircular(posX, posY, r/2) ) {
      fill( 255);
    } else {
      fill(0 ); //verde
    }
     
    noStroke();
    circle(posX, posY, r);
    this.textoBotones();
    text("Creditos", 300, 505);

  }
  
  botonCuadrado(x, x1, y, y1, ancho, alto ){
    //BOTON AVANZAR PUERTA CUADRADO
    if (this.estoyDentrodeBotonCuadrado( x, x1, y, y1 )) {

      fill( 255, 0, 0, 150 );
    } else {
      noStroke();
      noFill();
    }

    rect(x, y, ancho, alto);
    this.textoBotones();
    text("Inicio", 370, 272);   
  }

textoBotones(){
   fill(0, 255, 0);
   textSize(17);
   textAlign(CENTER);
}

  estoyDentrodeBotonCircular( posX, posY, r ) {
    return dist(mouseX, mouseY, posX, posY) <= r;
  }

  estoyDentrodeBotonCuadrado(x, x1, y, y1) { //con parametros con return
    return mouseX> x && mouseX< x1 && mouseY> y && mouseY< y1;
  }



botonPresionado(mousePressed){
  //SIEMEPRE PONER LOS PARAMETROS!!!!!!!!!!!!!!!!!
  
  if (this.pantalla == "menu" && this.estoyDentrodeBotonCircular (300, 500, 75/2) ) {
    this.pantalla = "creditos"; //CREDITOS
  }
  
  if (this.pantalla == "menu" && this.estoyDentrodeBotonCuadrado(350, 350+30, 284, 284+65) ) {
    this.pantalla = "P01"; //
  }

}

  crearMinijuego() {
    //this.Minijuego = new Minijuego()
  }
}
