PImage cool;
PImage penguin;
float scaleFactor;
PImage home;

void setup() {
  size(800,800);
  background(0);
  
  scaleFactor = .5;
  
  //Load image into code
  penguin = loadImage("Penguin.png");
  cool = loadImage("Pretty.jpg");
  home = loadImage("antartica.jpg");
  
  //Set alignment of pictures
  imageMode(CENTER);
}

void draw(){
  background(0);
  image(home,width/2, height/2,800,800);
  image( penguin, width/2, height/2, penguin.width * scaleFactor, penguin.height * scaleFactor);
  
  //Makes code look like alien in Mars
  filter(INVERT);
}

void keyPressed(){
  if ( keyCode == ESC ){
    exit();
  }
  
  //Makes picture gets larger and smaller
  if ( keyCode == UP ){
    scaleFactor+= .01;
  }
  if( keyCode == DOWN ){
    scaleFactor-= .01;
  }
}