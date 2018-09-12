import processing.sound.*;

SoundFile file;
String audioName = "Mario_Theme_Song.mp3";
String path;

int x;
int y;
PImage img;
PImage imgTwo;

//int numFrames = 4;  // The number of frames in the animation
//int frame = 0;
//PImage[] images = new PImage[numFrames];

 
void setup(){
  size (1200, 800);
  //plays the music
  path = sketchPath(audioName);
  file = new SoundFile(this,path);
  file.play();
  
  frameRate(40);
  img = loadImage("Mario_Walking.png");
  imgTwo = loadImage("Mario_Standing.png");
  x=width/3;
  y = 500;
  
 
}
 
void draw(){
  background(#A8B4F5);
  //ground
  fill(#A7782A);
  stroke(#939393);
  rect(0,652,width,150);
  if (key != CODED ){
  image(imgTwo,x,y);
  } else if (key == CODED){
     if (keyCode == LEFT){
      scale(-1, 1);
      image(img, -(x + img.width), y);
    } else if (keyCode == RIGHT){      
      image(img,x,y);
    }  else if(keyCode == UP){      
      image(img,x,y);
    } else if (keyCode != UP){
      ;
      image(imgTwo,x,y);
    }
  }
}
 
void keyPressed() {
  if (key == CODED) {
     if (keyCode == LEFT) {
      x -= 12;      
    } else if (keyCode == RIGHT) {
      x += 12;      
    }  else if(keyCode == UP){
      int k = height /3;
      y = k;      
    } 
    else if (keyCode != UP){
      y = 500;      
    }    
  } 
}

void keyReleased(){
  if (key == UP){
  y = 500;
  }
// still on going.
}
