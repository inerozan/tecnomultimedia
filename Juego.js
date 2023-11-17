class Juego {

  constructor( titulo, regular, x) { //DECLARO VARIABLES Y PROPIEDADES
    this.principe = new Principe(); //CREO OBJETO PRINCIPE (PERSONAJE)
    this.ramas = []; //CREO OBJETO RAMA
    
    for (let i = 0; i<4; i++){ 
    this.ramas[i] = new Rama(); //ARREGLO DE RAMAS
    }
    
    this.botones = new Botones();
    
    this.estado = "instrucciones"; 
    this.imgArray = foto;
    this.textoArray = texto;
    
    this.tiempoInicio = millis();
    
    this.vidas = 3;
    this.tj = millis() - this.tiempo;
    this.tj = 30000;
    
  }

  dibujar(imgArray, textos, x) {
if (this.estado=="instrucciones"){ //LOGICA DE ESTADOS
  this.reiniciar();
  image(this.imgArray[0], -230, 0, 1000, 600 );
  this.pantalla(20, 0, 90, 160, 415, 190, 95, 197, 400, 300);  
  this.botones.boton(250, 250+100, 460, 460+60, 100, 60);
  text(this.textoArray[1], 297, 497); 
}

else if(this.estado=="juego"){  
  image(this.imgArray[5], -100, 0, 1000, 600);
  this.principe.dibujar(imgArray);
  
  for (let i = 0; i<4; i++){
      this.ramas[i].dibujar();
    }
    
   let tiempoTranscurrido = millis() - this.tiempoInicio;
   this.tj = 30 - tiempoTranscurrido / 1000;
   textSize(20); 
   
   text("vidas: " + this.vidas, 90, 45);
   text("tiempo: " + nf(floor(this.tj), 0), 500, 45); 
   
   if (this.tj <= 0) {
  this.estado = "ganaste";
}

    
   if (this.vidas <= 0) {
       this.estado="ganaste";
      }   
 
}

else if(this.estado=="ganaste"){  
  image(this.imgArray[1], -210, 0, 1000, 600 );
  this.pantalla(20, 6, 105, 170, 385, 70, 95, 200, 400, 300);  
  textSize(30);
  text(this.textoArray[5], 290, 70);
  this.botones.boton(90, 90+110, 460, 460+60, 110, 60);
  text(this.textoArray[2], 145, 497); 
  this.botones.boton(410, 410+110, 460, 460+60, 110, 60);
  text(this.textoArray[7], 463, 497); 
}

else if (this.estado=="perdiste"){ 
  image(this.imgArray[3], 0, 0, 600, 600 );
  this.pantalla(20, 4, 105, 170, 385, 70, 109, 200, 370, 300);  
  textSize(30);
  text(this.textoArray[3], 290, 70);
  this.botones.boton(90, 90+110, 460, 460+60, 110, 60);
  text(this.textoArray[2], 145, 497); 
  this.botones.boton(410, 410+110, 460, 460+60, 110, 60);
  text(this.textoArray[7], 463, 497); 
}
 
 else if(this.estado=="creditos"){   
 image(this.imgArray[4], -210, 0, 1000, 600 );
  this.pantalla(20, 8, 105, 170, 385, 70, 97, 220, 400, 500);  
  this.pantalla(20, 9, 105, 240, 385, 70, 90, 285, 400, 500);  
  this.pantalla(20, 10, 105, 310, 385, 70, 95, 350, 400, 500);  
  this.botones.boton(250, 250+100, 460, 460+60, 100, 60);
  text(this.textoArray[7], 297, 497); 
}
 
  }
  
 pantalla(tam, i, x, y, ancho, alto, x1, y2, x3, y3){ //METODO PARA RESUMIR LO QUE SE VE EN UNA PANTALLA COMO EL TEXTO Y SU RECUADRO
    fill(255, 253, 229, 130);
    noStroke();
    rect(x, y, ancho, alto); 
    textSize(tam);
    textAlign(CENTER);
    textFont(titulo);
    fill(0);
    text(this.textoArray[i], x1, y2, x3, y3);    
}

 actualizando(){
    if(this.estado == "juego"){
      
      
    }
    
 
 }

teclaPresionada(keyCode){
 this.principe.teclaPresionada(keyCode); 
}

botonPresionado(mousePressed){ //PASO DE PANTALLAS CON BOTONES
  
  if(this.estado == "instrucciones" && this.botones.estoyDentrodeBoton(250, 250+100, 460, 460+60) ) {
      this.estado = "juego"; //
    }
  
      
  if(this.estado == "creditos" && this.botones.estoyDentrodeBoton(250, 250+100, 460, 460+60) ) {
      this.estado = "instrucciones"; //
    }
 
    
  if(this.estado == "ganaste" && this.botones.estoyDentrodeBoton(90, 90+100, 460, 460+60) ){
      this.estado = "creditos";// 
  }
    
  if(this.estado == "ganaste" && this.botones.estoyDentrodeBoton(410, 410+100, 460, 460+60) ){
      this.estado = "instrucciones";// 
  }
  
      
  if(this.estado == "perdiste" && this.botones.estoyDentrodeBoton(90, 90+110, 460, 460+60) ){
      this.estado = "creditos";// 
  }
    
  if(this.estado == "perdiste" && this.botones.estoyDentrodeBoton(410, 410+110, 460, 460+60) ){
      this.estado = "instrucciones";// 
  }
}
  
  reiniciar(){
    this.principe = new Principe(); //CREO OBJETO PRINCIPE (PERSONAJE)
    this.ramas = []; //CREO OBJETO RAMA
    
    for (let i = 0; i<4; i++){ 
    this.ramas[i] = new Rama(); //ARREGLO DE RAMAS
    }
    
    this.botones = new Botones();
    
    this.estado = "instrucciones"; 
    this.imgArray = foto;
    this.textoArray = texto;
    
    this.tiempoInicio = millis();
    
    this.vidas = 3;
    this.tj = millis() - this.tiempo;
    this.tj = 30000;
    
  }
  
}
