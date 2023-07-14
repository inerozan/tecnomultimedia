//DISEÑO DE PANTALLA INICIO Y CREDITOS
void inicioYcreditos(){
    background(#FFFDE5);
    image(ilu1, 100, 90, 300, 500);
    textFont(fuenteNueva); 
    fill(0);
    textSize(45);
    textAlign(CENTER); 
}

//CAJA DE TEXTO
void funcionesTxt(int x, int y, int anc, int alt) {
  fill(#FFFDE5, 130);
  rect(x, y, anc, alt);
  fill(0);
  textSize(18);
  textAlign(CENTER);
}

///BOTONES
void botones(String txtb1, String txtb2) {

  if (txtb2=="") {
    fill(#FFEA9D);
    ellipse(300, 500, 100, 60);
    fill(0);
    textSize(18);
    text(txtb1, 300, 505);
  } else {  
    fill(#FFEA9D);
    ellipse(110, 500, 100, 60);
    ellipse(490, 500, 100, 60);
    fill(0);
    textSize(18);
    text(txtb1, 110, 505);
    text(txtb2, 490, 505);
  }
}

boolean botonApretado(int x, int y) {

  boolean r=false; 
  {

    if (dist(x, y, mouseX, mouseY) < 50) {
      r=true;
    }
    return r;
  }
}  
