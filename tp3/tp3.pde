//TP3
//Alumna Ines Rozankovic


PFont fuenteNueva;

int pantalla = 1;

int frameCount = 0;

boolean estoyDentroDeLaZona;

boolean estoyDentroDeLaZonaDos;

boolean estoyDentroDeLaZonaTres;

boolean estoyDentroDeLaZonaCuatro;

boolean estoyDentroDeLaZonaCinco;


void setup() {

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

  oilPuddles = loadImage("oilPuddles.png");

  start = loadImage("start.png");

  credits = loadImage("credits.png");

  creditsDos = loadImage("creditsDos.png");

  restart = loadImage("restart.png");

  youlost = loadImage("youlost.png"); 

  iDeInstrucciones = loadImage("iDeInstrucciones.png");
  
  helado = loadImage("helado.png");
}

void draw() {

  println(estoyDentroDeLaZona); 
  estoyDentroDeLaZona = (mouseX > 60 && mouseY > 490 &&  mouseX  < 60 + 230 && mouseY < 490 + 80);

  println(estoyDentroDeLaZonaDos); 
  estoyDentroDeLaZonaDos = (mouseX > 335 && mouseY > 500 &&  mouseX  < 335 + 230 && mouseY < 500 + 545);

  println(estoyDentroDeLaZonaTres);
  estoyDentroDeLaZonaTres = (mouseX > 0 && mouseY > 0 &&  mouseX  < 0 + 100 && mouseY < 0 + 600);

  println(estoyDentroDeLaZonaCuatro);
  estoyDentroDeLaZonaCuatro = (mouseX > 60 && mouseY > 150 &&  mouseX  < 60 + 185 && mouseY < 150 + 80);

  println(estoyDentroDeLaZonaCinco);
  estoyDentroDeLaZonaCinco = (mouseX > 270 && mouseY > 150 &&  mouseX  < 270 + 185 && mouseY < 150 + 515);
  
  textFont(fuenteNueva);

  pantallaInicio();

  pantallaJuego();

  pantallaCreditos();

  pantallaPierde();

  pantallaInstrucciones();
}

void mousePressed() {
  if (estoyDentroDeLaZona) {
    pantalla = 2;
    image(playaDos, -60, 0, 670, 600); 
    image(autito2, 250, 420, 90, 180);
  }

  if (pantalla == 1){
    if(estoyDentroDeLaZonaDos) { 
    pantalla = 3;
  }}
  if ( pantalla == 3) {
    creditos++;
    if ( creditos >= texto.length) {
      creditos = 0;
    }
  }

  if (estoyDentroDeLaZonaCuatro) {//DE PERDISTE A  INICIO
    pantalla = 1;
  }
  
    if (estoyDentroDeLaZonaCinco) {//DE PERDISTE A CREDITOS
    pantalla = 3;
  }
}




void keyPressed() {
  if (pantalla == 1) {
    if (key =='i') {
      pantalla =5;
    }
  }
  if (pantalla == 5) {
    if (key == 'g') {
      pantalla = 2;
    }
  }

  if (pantalla == 3) {
    if (key == 'n') {
      pantalla = 1;
      frameCount = 1;
    }
  }
}


void mouseDragged() {
  if (pantalla == 2) {
    if (mouseX > x - 235 && mouseX < x + 235) {
      if (mouseY >y - 250 && mouseY < y + 250) {
        x = mouseX;
        y = mouseY;
      }
    }
    if (pantalla == 2) {
      if (estoyDentroDeLaZonaTres) {
        pantalla = 4;
      }
    }
  }
}
