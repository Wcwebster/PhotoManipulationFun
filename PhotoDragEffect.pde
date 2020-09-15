final int INTERVAL = 10;
PImage img;
int sign;
void setup()
{
  size(800, 800);
  smooth();
  background(255);
  img = loadImage("conor.jpg");
  //tint(255,0,0,255);
  image(img, 0, 0);
  sign = 1;
}

void draw()
{  
  loadPixels();
  //for (int i = 0; i < 80000; i++) {
  //  pixels[i+80000] = pixels[i];
  //}
  updatePixels();
}

void mouseDragged(){

  loadPixels();
  
  int location = mouseY*width + mouseX;
  int r = (int)random(5);
  for (int i = location - 5000; i < location + 5000; i++) {    
    if ((i + r < 640000) && (i > 0))
      pixels[i] = pixels[i + r];
  }
  updatePixels();
  
}

void mouseClicked() {
  sign = sign *-1;
  loadPixels();
  int location = mouseY*width + mouseX;
  for (int i = location - 5000; i < location + 5000; i++) {
    int r = (int)random(50);
    if ((i + r < 160000) && (i > 0))
      pixels[i] = pixels[i + r];
  }
  updatePixels();
}
