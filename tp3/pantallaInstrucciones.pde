PImage helado;



void pantallaInstrucciones() {

  if (pantalla == 5) {

    background(#F0E6B8);

    fill(0);

    textLeading(40);

    textFont(fuenteNueva);

    textAlign(CENTER, CENTER);

    textSize(25);

    text("INSTRUCTIONS: \n The point of the game is to get to the \n finish line dodging the oil puddles. \n If Lilo and Sttch crash into any of them \n or goes int the sea, you automatically lose.\n Are you ready? \n Press g to start", 300, 280);
  
    image(helado, 190, 350, 270, 270);
}

}
