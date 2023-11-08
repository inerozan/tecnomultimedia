class Historia {

  constructor(fondo, texto) {
    this.pantalla = "menu";  
    this.botones = new Botones();
    this.textoArray = texto;
    this.imgArray = fondo;
    //this.textoArray = [];
    //this.crearMinijuego();
  }

  dibujar() {

    if (this.pantalla=="menu") {
      //this.Minijuego.dibujar();
      
      image(this.imgArray[8], -200, 0, 800, 600);

      textSize(32);
      textAlign(CENTER);
      fill(0);
      text("La Ratita Presumida", 300, 100);
      //botonCircular(posX, posY, r, i, xT, yT)
      this.botones.botonCircular(300, 500, 75, 2);
      text("Creditos", 300, 505);
      this.botones.botonCuadrado(350, 350+30, 284, 284+65, 30, 65);     
      text("Inicio", 370, 272);
    } 
    
    //CREDITOS
    else if (this.pantalla=="creditos") {
      image(this.imgArray[16], 0, 0, 600, 600);
      text("HISTORIA ORIGINAL: ANONIMO\nVARIACIONES EN LA HISTORIA: DANA URQUIZA\nIMAGENES EXTRAIDAS DE YOUTUBE\nMODIFICACION DE IMAGENES : DANA URQUIZA\n EN PAINT 8)", 90, posY);
      
         //mov del texto abajo arriba
    posY=posY+1;
    if (posY>700) {
      posY = 0;
    }
    }

    //EMPIEZA HISTORIA
    else if (this.pantalla=="P01") {
      image(this.imgArray[9], 0, 0, 600, 600);
      this.cuadradoDeTexto(0, 405, 230, 190, 0, 15, 430, 200, 200);
      this.botones.botonCircular(520, 530, 75, 300, 505);
      
    } 
    
    else if (this.pantalla=="P02") {
      image(this.imgArray[17], 0, 0, 600, 600);
      this.cuadradoDeTexto( 355, 455, 230, 100, 1,  360, 480, 220, 200);
      this.botones.botonCircular(145, 505, 90, 300, 505);

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
    else if (this.pantalla=="P18") {
    }

    //RATITA REFLECCIONA
    else if (this.pantalla=="P19") {
    }

    //RATITA SE DEPRIME
    else if (this.pantalla=="P20") {
    }

    //RATITA SIGUE ADELANTE
    else if (this.pantalla=="P21") {
    }
  }

  cuadradoDeTexto(x1, y1, ancho, alto, i, x, y, xT, yT) {
    fill(219, 216, 150, 100);
    stroke(4);
    rect(x1, y1, ancho, alto);

    textAlign(CENTER);
    fill(0);
    textSize(20);

    text(this.textoArray[i], x, y, xT, yT);
  }

  botonPresionado(mousePressed) {
    //SIEMEPRE PONER LOS PARAMETROS!!!!!!!!!!!!!!!!!

    if (this.pantalla == "menu" && this.botones.estoyDentrodeBotonCircular (300, 500, 75/2) ) {
      this.pantalla = "creditos"; //CREDITOS
    }

    if (this.pantalla == "menu" && this.botones.estoyDentrodeBotonCuadrado(350, 350+30, 284, 284+65) ) {
      this.pantalla = "P01"; //
    }
    
    if (this.pantalla == "P01" && this.botones.estoyDentrodeBotonCircular (520, 530, 75/2) ){
      this.pantalla = "P02"; //
    }
  }



  crearMinijuego() {
    //this.Minijuego = new Minijuego()
  }
}
