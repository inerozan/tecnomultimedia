
//QUINTO CIRULO Y LAS LINEAS QUE LO ATRAVIESAN
void quintoCirculo(){
  fill(#F4F5E8);
ellipse(190, 450, 90, 90); 

ellipse(190, 450, 90, 90); 

  noStroke();
fill(#79C7F0); //AZUL
for (int i= 413 ; i< 518; i+= 21){
 rect( 0, i, 500, 7);
}
if (mousePressed){
   fill(#F4F5E8);
ellipse(190, 450, 90, 90); 

  noStroke();
 fill(255, random(255), 255); //VIOLETA
for (int i= 413 ; i< 518; i+= 21){
 rect( 0, i, 500, 7);
}
}
}
