PImage foto1, foto2, foto3, foto4, mascara;
PImage a;
int ancho;
int estado;
int crono;



void setup () {
  size (400, 400);
  background (0);


  foto1 = loadImage("paisaje.jpg");
  foto2 = loadImage("luces.jpg");
  foto3= loadImage("pergamo.jpg");
  foto4 = loadImage("coche.jpg");

  ancho = 40;

  noStroke();
  fill (40);
  rect (0, 0, ancho, ancho);
  mascara = get(0, 0, ancho, ancho);


  fill (0);
  rect (0, 0, ancho, ancho);
}


void draw () {
  
  crono = millis() % 20000; // % vuol dire che quando arriva al 20000 torna a 0
  
  if (crono<5000) {
    a = foto1.get (mouseX-ancho/2, mouseY-ancho/2, ancho, ancho);
  }else if (crono >= 5000 && crono < 10000) {
     a = foto2.get (mouseX-ancho/2, mouseY-ancho/2, ancho, ancho);
     }else if (crono >= 10000 && crono < 15000) {
     a = foto3.get (mouseX-ancho/2, mouseY-ancho/2, ancho, ancho);
     }else if (crono >= 15000 && crono < 20000) {
     a = foto4.get (mouseX-ancho/2, mouseY-ancho/2, ancho, ancho);
     }
  a.mask(mascara);

  image (a, mouseX-ancho/2, mouseY-ancho/2);
}