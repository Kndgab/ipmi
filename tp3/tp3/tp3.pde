// https://youtu.be/IJHMsnnByA0

PImage imgReferencia;

float rotacionActual = 0;
float escalaInteractiva = 1;
int cantidadCapas = 18;

color colorFondoBase = color(0);

void setup() {
  size(800, 400);
  rectMode(CENTER);
  ellipseMode(CENTER);
  imageMode(CENTER);

  imgReferencia = loadImage("obra.jpg");
}

void draw() {
  background(colorFondoBase);

  // Imagen de referencia a la izquierda
  pushMatrix();
  translate(200, 200);
  image(imgReferencia, 0, 0, 380, 380);
  popMatrix();

 //Linea
  stroke(60);
  strokeWeight(1);
  line(400, 0, 400, height);

  float distancia = dist(mouseX, mouseY, 600, 200);

  float mouseDerecha;

  if (mouseX < 400) {
    mouseDerecha = 400;
  } else {
    mouseDerecha = mouseX;
  }

  rotacionActual = map(mouseDerecha, 400, width, -radians(45), radians(45));
  escalaInteractiva = map(distancia, 0, 400, 1.15, 0.85);

  pushMatrix();
  translate(600, 200);
  scale(escalaInteractiva);
  rotate(rotacionActual);

  dibujarEstructuraInteractiva(cantidadCapas);

  popMatrix();
}

void dibujarEstructuraInteractiva(int capas) {
  float tam = 380;

  for (int i = 0; i < capas; i++) {
    for (int j = 0; j < 1; j++) {
      int gris = calcularTonoGris(i, capas);

      fill(gris);
      noStroke();

      if (i % 2 == 0) {
        ellipse(0, 0, tam, tam);
      } else {
        rect(0, 0, tam, tam);
      }
    }

    if (i % 2 == 0) {
      tam = tam * 0.7071;
    } else {
      tam = tam * 1.0;
    }
  }

  // Cuadrado blanco final del centro
  fill(255);
  noStroke();
  rect(0, 0, 14, 14);
}

int calcularTonoGris(int capa, int maxCapas) {
  if (capa == 0) {
    return 255;
  } else if (capa == 1) {
    return 12;
  } else if (capa == 2) {
    return 225;
  } else if (capa == 3) {
    return 45;
  } else if (capa == 4) {
    return 190;
  } else if (capa == 5) {
    return 75;
  } else {
    if (capa % 2 == 0) {
      return int(map(capa, 0, maxCapas, 230, 120));
    } else {
      return int(map(capa, 0, maxCapas, 40, 95));
    }
  }
}

void mousePressed() {
  colorFondoBase = color(random(25));
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    reiniciar();
  }
}

void reiniciar() {
  rotacionActual = 0;
  escalaInteractiva = 1;
  cantidadCapas = 18;
  colorFondoBase = color(0);
}
