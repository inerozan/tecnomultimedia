//CUARTO CIRULO Y LAS LINEAS QUE LO ATRAVIESAN
void cuartoCirculo(){
fill(#F4F5E8);
ellipse(300, 355, 90, 90);

ellipse(50, 355, 75, 75);

noStroke();
  fill(#F5E588); //AMARILLO
for (int i= 322 ; i< 399; i+= 21){
 rect( 0, i, 500, 7);
}

if(mousePressed){
  fill(#F4F5E8);
ellipse(300, 355, 90, 90);
  
  noStroke();
  fill(random(255), 190, 190); //CELESTE-GRIS
for (int i= 322 ; i< 399; i+= 21){
 rect( 0, i, 500, 7);
}
}
}
