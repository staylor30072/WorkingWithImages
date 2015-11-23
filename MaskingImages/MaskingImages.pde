PImage Sir, Gr;
float scaleFactor;

void setup() {
  size(800, 800);
  background(0);

  scaleFactor= .5;

  //Load image
  Sir = loadImage("Mr..jpeg");
  Gr = loadImage("border.png");
  Sir.mask(Gr);
  imageMode(CENTER);
}

void draw() {
  background(0);
  image(Sir, width/2, height/2 );
}

void keyPressed() {
  if (keyCode==ESC) {
    exit();
  }
}