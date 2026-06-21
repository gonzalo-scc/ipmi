
//hola profe, acá le dejo el link de youtube

// Link de youtube:   https://youtu.be/qHVtQeCiOb0



PImage img;

boolean invertido = false;
float tamExtra = 0;

void setup() {
  size(800, 400);

  img = loadImage("flechas.jpg");
}

void draw() {

  background(200);

  // Imagen de referencia
  image(img, 0, 0, 400, 400);

  // Fondo de la recreación
  fill(140, 0, 200);
  noStroke();
  rect(400, 0, 400, 400);

  // Distancia y tamaño
  float distancia = dist(mouseX, mouseY, 600, 200);
  float tam = map(distancia, 0, 300, 55, 30);

  tam = tam + tamExtra;

  //  las Flechas
  for (int fila = 0; fila < 6; fila++) {

    for (int col = 0; col < 5; col++) {

      float x = 450 + col * 65;
      float y = 50 + fila * 55;

      boolean izquierda;

      if (fila == 0 || fila == 3 || fila == 4) {
        izquierda = !invertido;
      } else {
        izquierda = invertido;
      }

      pushMatrix();

      translate(x, y);

      // el Rotate 
      rotate(radians(1));

      dibujarFlecha(0, 0, tam, izquierda);

      popMatrix();
    }
  }

  // Tiempo
  fill(255);
  textSize(16);
  text("Tiempo: " + millis()/1000 + " s", 520, 30);

  // Botón reiniciar
  fill(230);
  rect(650, 340, 100, 40);

  fill(0);
  text("Reiniciar", 668, 365);
}

// Función que NO retorna valor
void dibujarFlecha(float x, float y, float t, boolean izquierda) {

  fill(220, 255, 0);
  stroke(120);

  beginShape();

  if (izquierda) {

    vertex(x-t/2, y);
    vertex(x-t/4, y-t/2);
    vertex(x-t/4, y-t/4);
    vertex(x+t/4, y-t/4);
    vertex(x+t/4, y-t/2);
    vertex(x+t/2, y);
    vertex(x+t/4, y+t/2);
    vertex(x+t/4, y+t/4);
    vertex(x-t/4, y+t/4);
    vertex(x-t/4, y+t/2);

  } else {

    vertex(x+t/2, y);
    vertex(x+t/4, y-t/2);
    vertex(x+t/4, y-t/4);
    vertex(x-t/4, y-t/4);
    vertex(x-t/4, y-t/2);
    vertex(x-t/2, y);
    vertex(x-t/4, y+t/2);
    vertex(x-t/4, y+t/4);
    vertex(x+t/4, y+t/4);
    vertex(x+t/4, y+t/2);
  }

  endShape(CLOSE);
}

// Función que RETORNA un valor
boolean tocarBoton(float mx, float my) {

  return mx > 650 &&
         mx < 750 &&
         my > 340 &&
         my < 380;
}

void mousePressed() {

  if (tocarBoton(mouseX, mouseY)) {

    invertido = false;
    tamExtra = 0;

  } else {

    invertido = !invertido;

    // random()
    tamExtra = random(-5, 5);
  }
}

void keyPressed() {

  if (key == 'r' || key == 'R') {

    invertido = false;
    tamExtra = 0;
  }
}
