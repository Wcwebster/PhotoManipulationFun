int scale;
PImage img;
PImage img1;
int direction;
int size;
int copyWidth;
float angle = 1;
int counter = 1;
int background = 100;
int backgroundDir = 1;
int opacity = 0;
float r = random(0,100);
float g = random(0,100);
float b = random(0,100);
import processing.sound.*;
import java.util.*;
SoundFile file;

float distortion = 8; // amplitude
float speed1 = .01; // affects speed of wave scrolling
float speed2 = 2; // affects wave tightness
int xpos = 0;
int ypos = 0;
boolean set = false;
void setup()
{
  size(800,800);
  background(100);
  frameRate(60);
  scale = 2;
  stroke(0);
  fill(0);
  img = loadImage("subtronics.jpg");
  imageMode(CENTER);
  direction = -1;
  size = 195;
  image(img, 400, 400);
  copyWidth = 80;
  //file = new SoundFile(this, "Zoo Keeper FINAL.wav");
  //ile.cue(36);
  //file.play();
  img1 = img.get(400 , 400 , 100, 100);
}
void draw()
{  
   //background(0);
  // image(myImage,0,0);
  //copyWidth += direction;
  //if (copyWidth > 400 || copyWidth < 5)
    //direction *= -1;
  for (int i = 0; i < img.width; i+=copyWidth) {
  //copy(src, sx, sy, sw, sh,   dx,  dy,                                            dw, dh)
    copy(img, i + 9 ,200,copyWidth,height, i, (int) (sin((millis()+i*speed2)*speed1)*distortion),copyWidth,height);
  }
  //for (int i = 0; i < img.height; i+=80) {
  //copy(src, sx, sy, sw, sh,   dx,  dy,                                            dw, dh)
    //copy(img, 0,i,width,80, (int) (sin((millis()+i*speed2)*speed1)*distortion), 200,width,80);
  //}
  //image(img, 0, 0, size, size);
  //saveFrame(); 
}
void mouseClicked(){
  //xpos = mouseX;
  //ypos = mouseY;
  //set = true;
 // rect(xpos,ypos, mouseX - xpos, mouseY - ypos); 
  //img = loadImage("subtronics.jpg");
  img1 = img.get(mouseX - 50, mouseY + 150, 100, 100);
  //image(img1, mouseX, mouseY, 100, 100);
  xpos = mouseX;
  ypos = mouseY;
  set = true;
}
void mouseDragged() 
{
  //img1 = img.get(mouseX + 200, mouseY + 200, 100, 100);
  if (set == false)
    mouseClicked();
  image(img1, mouseX, mouseY, 100, 100);
  //for (int i = 0; i < img.height; i+=80) {
  //copy(src, sx,    sy, sw, sh,     dx,     dy,     dw,  dh)
  //copy(img, mouseX, mouseY + 200, 50, 50, mouseX, mouseY + 50 , 50, 50);
  //}
  //if (set)
    //rect(xpos, ypos, mouseX - xpos, mouseY - ypos);
  //if (set == true) copy(img1, xpos, ypos, 100, 100, mouseX, mouseY, 100, 100);
}

void mouseReleased(){
  set = false;
}
