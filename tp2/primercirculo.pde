//PRIMER CIRULO Y LAS LINEAS QUE LO ATRAVIESAN
void primerCirculo(){

    fill(#F4F5E8); 
ellipse(130, 75, 90, 90);

ellipse(290, 70, 50, 50);

ellipse(430, 85, 70, 70);

noStroke();
  fill(#F5E588); //AMARILLO
for (int i= 28 ; i< 133; i+= 21){
 rect( 0, i, 500, 7);
}
if (mousePressed){
   fill(#F4F5E8); 
ellipse(130, 75, 90, 90);

noStroke();
   fill(random(255), 190, 190); //CELESTE-GRIS
for (int i= 28 ; i< 133; i+= 21){
 rect( 0, i, 500, 7);
}
}
}
