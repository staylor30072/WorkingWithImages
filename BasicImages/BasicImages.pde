PImage cool;
PImage penguin, baby, lady, heart, bow;
float scaleFactor;
PImage home, weatherg;
float x;
float lilx, lily;

void setup() {
  size(800, 800);
  background(0);

  scaleFactor = .5;


  //Load image into code
  penguin = loadImage("Penguin.png");
  cool = loadImage("Pretty.jpg");
  home = loadImage("antartica.jpg");
  baby = loadImage("penguinbaby.png");
  weatherg = loadImage("sunset.jpg");
  lady = loadImage("lady.png");
  heart = loadImage("heart.png");
  bow = loadImage("bow.png");

  //Sets location of large penguin
  x=0;


  //Set alignment of pictures
  imageMode(CENTER);
}

void draw() {
  background(0);

  //Adds penguin and its home
  image(home, width/2, height/2, 800, 800);
  image( penguin, x, height/2, penguin.width * scaleFactor, penguin.height * scaleFactor);
  //Female penguin
  image( penguin, 600, height/2, 250, 300);
  image( bow, 600, 250, 40, 40);
  home.mask(weatherg);


  //Makes code look kinda drawn-y
  filter(POSTERIZE, 15);
}

void keyPressed() {
  if ( keyCode == ESC ) {
    exit();
  }

  //Makes picture gets larger and smaller accroding to up and down arrows
  if ( keyCode == UP ) {
    scaleFactor+= .01;
  }
  if ( keyCode == DOWN ) {
    scaleFactor-= .01;
  }

  //Makes large penguin move left and right
  if (keyCode==LEFT) {
    x-=3;
  }
  if (keyCode==RIGHT) {
    x+=3;
  }
  
  //Makes heart pop up when they meet
}