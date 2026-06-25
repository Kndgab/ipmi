PImage img1, img2, img3, img4, img5, img7;
PImage humo, logo;

float humoX1 = 0;
float humoX2 = -200;

int pantalla = 0;
int tiempo;

PFont fuente;

boolean inicio = true;

void setup() {

  size(640, 480);

  img1 = loadImage("Caballeria.jpg");
  img2 = loadImage("Caballeria2.jpg");
  img3 = loadImage("Caballeria3.jpg");
  img4 = loadImage("Caballeria4.jpg");
  img5 = loadImage("Caballeria5.jpg");

  img7 = loadImage("Caballeria7.png");

  humo = loadImage("Humo.png");
  logo = loadImage("logo.png");

  fuente = createFont("Arial", 32);
  textFont(fuente);

  tiempo = millis();
}

void draw() {

  if (inicio) {

    background(0);

    imageMode(CENTER);

    image(logo, width/2, height/2, 420, 180);

    fill(255);

    textAlign(CENTER);

    textSize(22);

    text("Haz click para comenzar", width/2, 420);
  }

  else {

    imageMode(CORNER);

    textAlign(LEFT);

    if (pantalla == 0) {

      image(img1, 0, 0, width, height);

      fill(0, 100);
      rect(0, 0, width, height);

      fill(255);

      textSize(38);
      text("El invierno llegó.", 150, 120);

      textSize(24);
      text("Y con él, la guerra contra los muertos.", 80, 170);
    }

    if (pantalla == 1) {

      image(img2, 0, 0, width, height);

      fill(0, 90);
      rect(0, 0, width, height);

      fill(255);

      textSize(28);

      text("Miles marcharon hacia", 90, 90);
      text("la oscuridad.", 160, 125);

      textSize(22);

      text("Pocos volverían.", 200, 180);
    }

    if (pantalla == 2) {

      image(img3, 0, 0, width, height);

      fill(0, 100);
      rect(0, 0, width, height);

      fill(255);

      textSize(28);

      text("Invernalia esperaba", 110, 80);
      text("el ataque.", 180, 115);

      textSize(20);

      text("La noche más larga estaba", 90, 170);
      text("por comenzar.", 170, 200);
    }

    if (pantalla == 3) {

      image(img4, 0, 0, width, height);

      fill(0, 110);
      rect(0, 0, width, height);

      fill(255);

      textSize(26);

      text("El Rey de la Noche", 100, 70);
      text("avanzaba sin miedo.", 120, 105);

      textSize(20);

      text("Su ejército parecía", 150, 160);
      text("imparable.", 220, 190);
    }

    if (pantalla == 4) {

      image(img5, 0, 0, width, height);

      fill(0, 90);
      rect(0, 0, width, height);

      fill(255);

      textSize(26);

      text("El norte luchó hasta", 120, 80);
      text("el último momento.", 130, 115);

      textSize(20);

      text("Nadie quería caer", 160, 170);
      text("esa noche.", 210, 200);
    }

    if (pantalla == 5) {

      background(0);

      fill(255);

      textAlign(CENTER);

      textSize(34);
      text("Cuando llegó la oscuridad...", width/2, 200);

      textSize(26);
      text("Westeros luchó unido.", width/2, 260);
    }

    if (pantalla == 6) {

      image(img7, 0, 0, width, height);

      fill(0, 130);
      rect(0, 0, width, height);

      fill(255);

      textAlign(CENTER);

      textSize(36);
      text("FIN", width/2, 180);

      textSize(22);
      text("Haz click para reiniciar", width/2, 420);
    }

    if (pantalla < 5) {

      tint(255, 120);
      image(humo, humoX1, 250, 300, 150);

      tint(255, 80);
      image(humo, humoX2, 80, 250, 120);

      noTint();

      humoX1 += 0.5;
      humoX2 += 0.3;

      if (humoX1 > width) {
        humoX1 = -300;
      }

      if (humoX2 > width) {
        humoX2 = -250;
      }
    }

    if (millis() - tiempo > 4000 && pantalla == 0) {

      pantalla = 1;
      tiempo = millis();
    }

    if (millis() - tiempo > 4000 && pantalla == 1) {

      pantalla = 2;
      tiempo = millis();
    }

    if (millis() - tiempo > 4000 && pantalla == 2) {

      pantalla = 3;
      tiempo = millis();
    }

    if (millis() - tiempo > 4000 && pantalla == 3) {

      pantalla = 4;
      tiempo = millis();
    }

    if (millis() - tiempo > 4000 && pantalla == 4) {

      pantalla = 5;
      tiempo = millis();
    }

    if (millis() - tiempo > 4000 && pantalla == 5) {

      pantalla = 6;
      tiempo = millis();
    }
  }
}

void mouseClicked() {

  if (inicio) {

    inicio = false;

    pantalla = 0;

    tiempo = millis();
  }

  else if (pantalla == 6) {

    pantalla = 0;

    tiempo = millis();

    humoX1 = 0;
    humoX2 = -200;
  }
}
