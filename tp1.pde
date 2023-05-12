//Diaz Britez Bautista
//TP1 comision 1
PImage Im1, Im2, Im3;
PFont l;
int posX, posY, L, A, pX, pY, pY2;
int segundos;
float t;
void setup() {
  size(640, 480);
  background(255);
  segundos=0;
  l = loadFont("fuent.vlw");
  L= 90;
  A= 50;
  Im1 = loadImage("I1.png");
  Im2 = loadImage("I2.jpg");
  Im3 = loadImage("I3.jpg");
  textAlign(CENTER, CENTER);
  textFont(l);
  t = 0;
  posX = 550;
  posY= 430;
  pX=-200;
  pY= 500;
  pY2= -100;
}

void draw() {
  if (frameCount % 60 == 0) {
    segundos++;
  }
  if (segundos == 1) {
    image(Im2, 0, 0, 640, 480);
    fill(54, 247, 255);
    text("El McDonalds ubicado en el obelisco", pX, height/2);
    text("Y su historia con Boca Jrs.", pX, 280);
    textSize(25);
    pX= pX+9;
  }
  if (segundos==6) {
    image(Im1, 0, 0, 640, 480);
    fill (255, 5, 252);
    text ("El 12 de Diciembre de 2013", width/2, pY);
    text ("Por festejos los hinchas lo destrozaron", width/2, pY2);
    pY= pY-8;
    pY2= pY2+8;
  }
  if (segundos==12) {
    image(Im3, 0, 0, 640, 480);
    fill (96, 255, 5);
    textSize(t);
    text("Y es por eso que todos los 12 del 12 lo vallan", width/2, height/2);
    t= t+0.4;
  }
  if (segundos ==14) {
    fill (0);
    rect(posX, posY, L, A);
    textSize(16);
    fill (255);
    text ("Reiniciar", posX +50, posY +30);
  }
}
void mousePressed () {
  if ( segundos >= 14 && mouseX>posX && mouseX<posX+L && mouseY>posY && mouseY<posY+A) {
    t = 0;
    segundos = 0;
    pX= -200;
    pY= 500;
    pY2= -100;
  }
}
