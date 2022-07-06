//TP3
//Alumna Ines Rozankovic

int cant = 10;

float arbustos; 

PFont fuenteNueva;

int pantalla = 1;

boolean estoyDentroDeLaZona;

boolean estoyDentroDeLaZonaDos;

boolean estoyDentroDeLaZonaTres;


void setup(){
  
  size (600, 600);
  
  playa = loadImage("playa.png");
  
  introLiloyStitch = loadImage("introliloystitch.png");
  
  titulos = loadImage("titulos.png");
  
  fuenteNueva = loadFont("liloFuente.vlw");
  
  playaDos = loadImage("playaDos.jpg");
  
  autito2 = loadImage("autito2.png");
  
  hojas = loadImage("hojas.png");
  
  stitchSurfboard = loadImage("stitchSurfboard.png");
  
  texto = loadStrings("data/texto.txt");
  
 liloGanaste = loadImage("liloGanaste.png");
 
 stitchsad = loadImage("stitchsad.png");
  
}

void draw(){
  
  println(estoyDentroDeLaZona); 
  estoyDentroDeLaZona = (mouseX > 60 && mouseY > 490 &&  mouseX  < 60 + 230 && mouseY < 490 + 80);
  
  println(estoyDentroDeLaZonaDos); 
  estoyDentroDeLaZonaDos = (mouseX > 315 && mouseY > 490 &&  mouseX  < 315 + 230 && mouseY < 490 + 545);
  
  println(estoyDentroDeLaZonaTres);
  estoyDentroDeLaZonaTres = (mouseX > 0 && mouseY > 0 &&  mouseX  < 0 + 100 && mouseY < 0 + 600);
  
  pantallaInicio();
  
  pantallaJuego();
  
  pantallaCreditos();
  
  pantallaPierde();
  
  
  }

void mousePressed(){
   if (estoyDentroDeLaZona){
   pantalla = 2; 
 }
 
 if (estoyDentroDeLaZonaDos){ 
   pantalla = 3;
 }
 
 if( pantalla == 3){
    creditos++;
  if ( creditos>=texto.length) {
    creditos=0;
  } 
 }
 //if (estoyDentroDeLaZonaTres){
 // pantalla = 1; 
 }
