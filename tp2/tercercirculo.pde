//TERCER CIRULO Y LAS LINEAS QUE LO ATRAVIESAN
void tercerCirculo(){
  fill(#F4F5E8);
ellipse(200, 260, 90, 90); 

  noStroke();
fill(#F079CC); //ROSA
for (int i= 210 ; i< 308; i+= 21){
 rect( 0, i, 500, 7);
}
if (mousePressed){
    fill(#F4F5E8);
ellipse(200, 260, 90, 90); 

  noStroke();
fill(255, 155, random (255)); ////NARANJA
for (int i= 210 ; i< 308; i+= 21){
 rect( 0, i, 500, 7);
}
}
}
