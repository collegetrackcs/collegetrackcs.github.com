/* @pjs preload="warzone.jpg"; */
        
void setup()
{
  size(200,200);
  noLoop();
}

void draw()
{
  background(255);
  PImage im = loadImage("warzone.jpg");
  image(im, 50,50, 100,100);
}
