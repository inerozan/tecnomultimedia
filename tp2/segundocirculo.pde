//SEGUNDO CIRULO Y LAS LINEAS QUE LO ATRAVIESAN
void segundoCirculo(){
  fill(#F4F5E8);
ellipse(370, 170, 90, 90); 

  noStroke();
fill(#79C7F0); //AZUL
for (int i= 119 ; i< 224; i+= 21){
 rect( 0, i, 500, 7);
}
if (mousePressed){
 fill(#F4F5E8);
ellipse(370, 170, 90, 90); 

  noStroke();
 fill(255, random(255), 255); //VIOLETA
for (int i= 119 ; i< 224; i+= 21){
 rect( 0, i, 500, 7);
}
}
}
