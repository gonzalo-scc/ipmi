PImage img1, img2, img3, img4, img5, img6, img7, img8, img9;
PFont fuente;

// hola profe, elegi minecraft como juego, nose si logra explicarlo bien, pero intente muy resumidamente explicar su lore o puntos interesantes, nuevos y capaz viejos

int pantalla = 0;
int tiempoCambio;

float textoY = 500;
float escalaTexto = 1;

void setup() {

  size(640, 480);

  // imagenes del juego elegido (Minecraft)

  img1 = loadImage("img1.jpeg");
  img2 = loadImage("img2.jpeg");
  img3 = loadImage("img3.jpeg");
  img4 = loadImage("img4.jpeg");
  img5 = loadImage("img5.jpeg");
  img6 = loadImage("img6.jpeg");
  img7 = loadImage("img7.jpeg");
  img8 = loadImage("img8.jpeg");
  img9 = loadImage("img9.jpeg");

  // fuente usada en el proyecto

  fuente = createFont("Arial", 32);
  textFont(fuente);

  textAlign(CENTER);

  tiempoCambio = millis();
}

void draw() {

  background(0);

  // cambio de pantallas automatizado

  if (pantalla >= 1 && pantalla < 9) {

    if (millis() - tiempoCambio > 4000) {

      pantalla++;
      tiempoCambio = millis();
      textoY = 500;
    }
  }

  // pantallas

  if (pantalla == 0) {
    inicio();
  }

  else if (pantalla == 1) {
    pantalla1();
  }

  else if (pantalla == 2) {
    pantalla2();
  }

  else if (pantalla == 3) {
    pantalla3();
  }

  else if (pantalla == 4) {
    pantalla4();
  }

  else if (pantalla == 5) {
    pantalla5();
  }

  else if (pantalla == 6) {
    pantalla6();
  }

  else if (pantalla == 7) {
    pantalla7();
  }

  else if (pantalla == 8) {
    pantalla8();
  }

  else if (pantalla == 9) {
    pantallaFinal();
  }
}


// empieza


void inicio() {

  background(20);

  fill(255);

  textSize(36);
  text("MINECRAFT", width/2, 180);

  textSize(20);
  text("La evolucion del juego", width/2, 220);

  fill(100, 255, 100);
  rect(220, 300, 200, 60);

  fill(0);
  textSize(25);
  text("COMENZAR", width/2, 340);
}


// PANTALLA 1


void pantalla1() {

  image(img1, 0, 0, width, height);

  animacionTexto();

  fill(255);

  textSize(30 * escalaTexto);

  text("Minecraft fue creado en 2009 por Notch", width/2, textoY);
}


// PANTALLA 2


void pantalla2() {

  image(img2, 0, 0, width, height);

  animacionTexto();

  fill(255);

  textSize(28 * escalaTexto);

  text("Las primeras versiones tenian graficos simples", width/2, textoY);
}


// PANTALLA 3


void pantalla3() {

  image(img3, 0, 0, width, height);

  animacionTexto();

  fill(255);

  textSize(30 * escalaTexto);

  text("Con el tiempo se agregaron nuevos biomas", width/2, textoY);
}


// PANTALLA 4


void pantalla4() {

  image(img4, 0, 0, width, height);

  animacionTexto();

  fill(0);

  textSize(28 * escalaTexto);

  text("agregaron shaders (opcional)", width/2, textoY);

// puse opcinal porque es algo que podes elegir si queres tenerlo o no, no es algo que viene incluido con el juego como tal, pero senti que estaba bueno ponerlo

}


// PANTALLA 5

void pantalla5() {

  image(img5, 0, 0, width, height);

  animacionTexto();

  fill(0);

  textSize(30 * escalaTexto);

  text("Minecraft se sigue actualizando con el tiempo", width/2, textoY);
}


// PANTALLA 6


void pantalla6() {

  image(img6, 0, 0, width, height);

  animacionTexto();

  fill(0);

  textSize(30 * escalaTexto);

  text("El modo online hizo popular al juego", width/2, textoY);
}


// PANTALLA 7


void pantalla7() {

  image(img7, 0, 0, width, height);

  animacionTexto();

  fill(255);

  textSize(30 * escalaTexto);

  text("Los jugadores pueden explorar mundos infinitos", width/2, textoY);
}


// PANTALLA 8

void pantalla8() {

  image(img8, 0, 0, width, height);

  animacionTexto();

  fill(255);

  textSize(30 * escalaTexto);

  text("los jugadores pueden construir libremente", width/2, textoY);
}


// final 
// aca le intente agregar un "gracias por ver" o algo asi, pero salia por fuera del margen y no lo pude arreglar entonces decidi sacarlo, creo que hasta queda mejor asi igual 


void pantallaFinal() {

  image(img9, 0, 0, width, height);

  fill(255);

 
  // boton reiniciar

  fill(5);
  rect(220, 300, 200, 60);

  fill(255);

  textSize(25);
  text("REINICIAR", width/2, 340);
}

// animacion 


void animacionTexto() {

  textoY -= 1.5;

  if (textoY < 220) {

    textoY = 220;
  }

  escalaTexto = 1 + 0.1 * sin(frameCount * 0.1);
}

// maouse


void mousePressed() {

  // boton inicio

  if (pantalla == 0 &&
    mouseX > 220 && mouseX < 420 &&
    mouseY > 300 && mouseY < 360) {

    pantalla = 1;
    tiempoCambio = millis();
  }

  // boton reiniciar

  if (pantalla == 9 &&
    mouseX > 220 && mouseX < 420 &&
    mouseY > 300 && mouseY < 360) {

    pantalla = 0;
    textoY = 500;
  }
}
