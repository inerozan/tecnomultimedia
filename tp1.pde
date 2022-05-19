//TP1
//Alumna Ines Rozankovic
//Para pasar de pantalla tecla 'n'
//En pantalla 5 tocar la letra 'x'

//VARIABLES


float posX;

float posY;

String textoDirector = "Directed by\n" +
  "Stephanie Savage";

String textoWriters = "Written by\n" +
  "Cecily von Ziegesar"; 

String textoProducers = "Produced by\n" +
  "Josh Schwartz\n" +
  "Amy Sherman-Palladino";

String textoExecutiveProducers = "Executive Producers\n" +
  "Liza Chasin\n" +
  "Debra Hayward";

String textoDirectorOfPhotography = "Director of Photography\n" +
  "Chris Seager B.S.C";

String textoProductionDesigner = "Production Designer\n" +
  "Eve Stewart";

String textoEditor = "Editor\n" +
  "Simon Cozens";

String textoCostumeDesigner = "Costume Designer\n" +
  "Julia Caston";

String textoHairandMakeup = "Hair & Makeup Designer\n" +
  "Fae Hammond";

String textoMusic = "Music by\n" +
  "Taylor Allison Swift\n" +
  "Harry Styles";

String textoMusicSupervisor = "Music Supervisor\n" +
  "Nick Angelini";

String textoCasting = "Casting by\n" +
  "Rick Jackson";

String textoSpecialThanks = "Special Thanks\n" +
  "Sam Belloway\n" +
  "Randal lunnerman";

String textoBased = "Based on\n" +
  "Ines Rozankovic's\n" +
  "novel";

int pantalla = 1;

PImage chicalentes;

PImage chicarosa;

PImage chicaaros;

PImage chicabrallet;

PImage naranja;

PImage chicaverde;

PImage chicafanta;

PImage chicavioleta;

PImage chicomulti;

PImage texanaflores;

PImage chicafuccia;

PImage chicasombrero;

PImage greendresscontelefono;

PImage pradaflores;

PImage greendresscontelefonored;

PImage tresgirls;

PImage chicaanteojos;

PFont fuenteNueva;

boolean estoyDentroDeLaZona;

boolean estoyDentroDeLaZonaDos;

boolean estoyDentroDeLaZonaTres;



void setup() {

  size(1200, 700);

  fuenteNueva = loadFont("vogue.vlw");

  posX = 200;

  posY = 0;

  chicalentes = loadImage("chicalentes.png");

  chicarosa = loadImage("chicarosa.png");

  chicabrallet = loadImage("chicabrallet.png");

  naranja = loadImage("naranja.png");

  chicafanta = loadImage("chicafanta.png");

  chicaverde = loadImage("chicaverde.png");

  chicavioleta = loadImage("chicavioleta.png");

  chicafuccia = loadImage("chicafuccia.png");

  chicasombrero = loadImage("chicasombrero.png");

  tresgirls = loadImage("tresgirls.png");

  chicaanteojos = loadImage("chicaanteojos.png");

  pradaflores = loadImage("pradaflores.png");

  greendresscontelefono = loadImage("greendresscontelefono.png");

  greendresscontelefonored = loadImage("greendresscontelefonored.png");

  chicomulti = loadImage("chicomulti.png");

  texanaflores = loadImage("texanaflores.png");

  chicaaros = loadImage("chicaaros.png");

  fuenteNueva = loadFont("vogue.vlw");
}



void draw() {

  background(#FFFEE5);

  estoyDentroDeLaZona = (mouseX > 40 && mouseY > 100 &&  mouseX  < 40 + 350 && mouseY < 100 + 500);

  println(estoyDentroDeLaZona);

  estoyDentroDeLaZonaDos = (mouseX > 440 && mouseY > 100 && mouseX < 440 + 350 && mouseY < 100 + 500);

  println(estoyDentroDeLaZonaDos);

  estoyDentroDeLaZonaTres = (mouseX > 840 && mouseY > 100 && mouseX < 840 + 350 && mouseY < 100 + 500);

  println(estoyDentroDeLaZonaTres);

  if (pantalla == 1) {

    fill(#FC9A21);

    rect(posX- 100, posY+ 240, 990, 230);

    fill(255);

    noStroke();

    rect(posX- 80, posY+ 260, 950, 190);

    fill(0);

    textFont(fuenteNueva); 

    textSize(80); 

    textAlign(CENTER);

    text("STYLING FOR MARILYN", posX+ 400, posY+ 380);
  } else if (pantalla == 2) {

    image(chicalentes, 40, 100, 350, 500); 

    if (mousePressed) {
      if (estoyDentroDeLaZona) {

        background(#FFFEE5);

        image(naranja, 40, 100, 350, 500);
      }
    } else {

      image(chicalentes, 40, 100, 350, 500);
    }

    image(chicarosa, 440, 100, 350, 500);
    if (mousePressed) {

      if (estoyDentroDeLaZonaDos) {

        background(#FFFEE5);

        image(chicaverde, 440, 100, 350, 500);

        image(chicalentes, 40, 100, 350, 500);
      }
    } else {

      image(chicarosa, 440, 100, 350, 500);
    }

    image(chicabrallet, 840, 100, 350, 500);
    if (mousePressed) {

      if (estoyDentroDeLaZonaTres) {

        background(#FFFEE5);

        image(chicafanta, 840, 100, 350, 500);

        image(chicarosa, 440, 100, 350, 500);

        image(chicalentes, 40, 100, 350, 500);
      }
    } else {

      image(chicabrallet, 840, 100, 350, 500);
    }
  } else if (pantalla == 3) {
    image(chicasombrero, 30, 10, 510, 710);

    textSize(30);

    text(textoDirector, 700, 210);
  } else if (pantalla == 7) {

    image(chicavioleta, 350, 0, 520, 700);

    textSize(30);

    textAlign(CENTER);

    text(textoMusic, 200, 200);

    text(textoMusicSupervisor, 1000, 400);
  } else if (pantalla == 8) {

    textSize(30);

    textAlign(CENTER);

    text(textoCasting, 600, 120);

    text(textoBased, 600, 320);

    text(textoSpecialThanks, 600, 520);

    image(chicaaros, 800, 100, 350, 500);

    image(texanaflores, 40, 100, 350, 500);
  } else if (pantalla == 4) {

    image(tresgirls, 670, 0, 490, 690);

    textSize(30);

    textAlign(CENTER);

    text(textoWriters, 350, 140);

    text(textoProducers, 350, 310); 

    text(textoExecutiveProducers, 350, 540);
  } else if (pantalla == 6) {
    image(chicaanteojos, 40, 100, 350, 500);

    image(pradaflores, 810, 100, 350, 500);

    textSize(30);

    textAlign(CENTER);

    text(textoDirectorOfPhotography, 600, 200);

    text(textoProductionDesigner, 600, 300);

    text(textoCostumeDesigner, 600, 400);

    text(textoHairandMakeup, 600, 500);
  } else if (pantalla == 5) {

    fill(0);

    textSize(30);

    textAlign(CENTER);

    text("Margot Robbie as Marilyn, blah, blah, blah, blah", 400, 50);

    text("Gemma Chan as Xiuying", 470, 120);

    text("Dakota Johnson as Ana", 290, 190);

    text("Anya-Taylor Joy as Esmeralda", 490, 260);

    text("Lupita Nyong'o as Katerina", 230, 330);

    text("Rachel Zegler as Maria", 530, 400);

    text("Ariana DeBose as Josie", 299, 470);

    text("Zión Moreno as Luna La", 495, 540);

    text("Phoebe Tonkin as Cleo", 360, 610);

    text("Gabrielle Union as Torrance P. Jones", 270, 680);

    image(greendresscontelefono, 655, -10, 520, 720);

    if (keyPressed) {

      if (key == 'x') {

        image(greendresscontelefonored, 655, -10, 520, 720);
      }
    }
  }
}

void keyPressed() {

  if (pantalla == 1) {
    if (key == 'n') {

      pantalla++;
    }
  } else if (pantalla == 2) {

    if (key == 'n') {

      pantalla++;
    }
  } else if (pantalla == 3) {
    if (key == 'n') {

      pantalla++;
    }
  } else if (pantalla == 4) {
    if (key == 'n') {

      pantalla++;
    }
  } else if (pantalla == 5) {
    if (key == 'n') {

      pantalla++;
    }
  } else if (pantalla == 6) {
    if (key == 'n') {

      pantalla++;
    }
  } else if (pantalla == 7) {
    if (key == 'n') {

      pantalla++;
    }
  } else if (pantalla == 8) {
    if (key == 'n') {

      pantalla = 1;
    }
  }
}
