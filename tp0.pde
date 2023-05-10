//tp0 Ines Rozankovic Lejajo 91470/0

PImage  llamaColores;

void setup(){
size(800, 400);
llamaColores = loadImage ("llamaColores.jpg"); 
}

void draw(){
background (203, 171, 101);

println("X:"); 
println(mouseX);
println("Y:");
println(mouseY);

image (llamaColores, 400, 0, 400, 400);

//LLAMA<3

//cuello
fill(247, 235, 210);
rect (139, 170, 106, 399);
ellipse (160, 248, 60, 130); //moflete cuello izq
ellipse (220, 248, 60, 130); //moflete cuello der

//orejas
fill(116, 84, 19); 
ellipse(148, 80, 35, 110); //oreja izq
ellipse(233, 83, 35, 110); //oreja der

//cabeza
fill (245, 237, 223);
ellipse (192, 142, 106, 106);
quad (139, 136, 245, 136, 230, 250, 154, 250); //cuello


ellipse (192, 250, 76, 30); //boca
ellipse (150, 152, 50, 50); //ojo salton izq
ellipse (232, 152, 50, 50); //ojo salton der
noStroke();


fill (229, 212, 176);
ellipse (190, 227, 32, 35); //boca baja
fill(4);
rect(177, 217, 25, 10); //lengua
fill (229, 212, 176);
circle (180, 216, 24); //mofletes
circle (200, 216, 24); //mofletes

fill(0);
ellipse (137, 154, 21, 21); //eyeball izq
ellipse (245, 154, 21, 21); //eyeball der
fill (245, 237, 225, 95);
ellipse (133, 147, 24, 7); //pestana izq
ellipse (249, 147, 24, 7); //pestana izq


fill(167, 155, 129);
ellipse (190, 195, 32, 7); //rendondea a nariz
triangle (173, 195, 207, 195, 190, 209); //nariz

//flecos izquierda
fill(255, 31, 35);
triangle (138, 40, 115, 128, 149, 120); //fleco rojo

fill(5, 101, 232);
triangle (132, 50, 119, 82, 134, 90); //fleco azul

fill(218, 219, 40);
triangle (138, 40, 129, 102, 158, 96); //fleco amarillo

fill(255, 156, 26);
circle( 138, 37, 7);
triangle (138, 35, 149, 70, 109, 70); //fleco naranja

fill(255, 15, 144);
circle (151, 40, 6);
triangle (151, 37, 173, 79, 152, 77); //fleco rosa 
triangle (151, 42, 152, 80, 139, 89); //fleco rosa 

//flecos derecha
fill(255, 31, 35);
triangle (252, 79, 250, 131, 275, 125); //fleco rojo

fill(218, 219, 40);
triangle (252, 79, 230, 121, 275, 121); //fleco amarillo

fill(5, 101, 232);
triangle (239, 69, 230, 104, 269, 104); //fleco azul

fill(255, 156, 26);
triangle (239, 49, 237, 94, 265, 87); //fleco naranja

fill(255, 15, 144);
circle (232, 33, 6);
triangle (232, 30, 254, 79, 233, 77); //fleco rosa 
triangle (232, 33, 245, 80, 220, 89); //fleco rosa 

}
