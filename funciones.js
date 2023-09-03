
function manchas(){
 
  for(let i=1; i< 4; i++){
    image(juego[7], (i*200)-190, vec[i], 100, 100);
   if(vec[i] < 700){
      vec[i]++;
   }else{
     vec[i] = -100;
   }
 }
}

function inicioycreditos(){
  //titulo
  image(juego[0], 0, 0, 1000, 700);
  //lilo y stitch
  image(juego[2], 160, 180, 270, 290); 
  //hojas arededor de titulo
  image(juego[11], -100, -30, 300, 250);
  image(juego[12], 400, -30, 300, 250);
  image(juego[13], 100, -100, 300, 250);
  image(juego[14], 210, -100, 300, 250);



}
