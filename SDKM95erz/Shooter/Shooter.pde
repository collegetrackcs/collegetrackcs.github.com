/* @pjs preload="http://coderiderz.com/SDKM95erz/Shooter/data/jetspre.png,
http://coderiderz.com/SDKM95erz/Shooter/data/raptor.png,
http://coderiderz.com/SDKM95erz/Shooter/data/warzone.jpg"; */
/* @pjs globalKeyEvents="true"; */  
PImage img;
PImage cloud;
PImage jet;
int location = 150;

int[] beamX = new int[1000000];
int[] beamY = new int[1000000];
int counter = 0;

int plane1 = 20;
int plane2 = 40;
int plane3 = 48;
int plane4 = 100;

void setup()
{
  size(400,400);
  noStroke();
  jet = loadImage("http://coderiderz.com/SDKM95erz/Shooter/data/jetspre.png");
  img = loadImage("http://coderiderz.com/SDKM95erz/Shooter/data/raptor.png");
  cloud = loadImage("http://coderiderz.com/SDKM95erz/Shooter/data/warzone.jpg");
}

void draw() {
  image(cloud, 0, 0, 400, 400);

  plane1++;
  plane2++;
  plane3++;
  plane4++;

  if(keyPressed) {
    if(key == CODED && keyCode == LEFT)
    {
      
      location = location - 5;
          
    }
     if(key == CODED && keyCode == RIGHT)
    {
      
      location = location + 5;
      
    }
    if(key == KeyEvent.VK_SPACE || (key == CODED && keyCode == UP))
    {
      
      beamX[counter] = location+42;
      beamY[counter] = 330; 
      counter++;
    }
  }
  
  fill(245, 250, 5);
  for(int i=0; i<counter; i++)
  {
    rect(beamX[i], beamY[i], 5, 5);
  }
  
  for(int i=0; i<counter; i++)
  {
    beamY[i]-= 5;
  }
 
  image(img, location, 340, 90, 60);
  image(jet,0,plane1);
  image(jet,100,plane2);
  image(jet,250,plane3);
  image(jet,330,plane4);
  if(plane1 > 450) plane1 = 0;
  if(plane2 > 450) plane2 = 0;
  if(plane3 > 450) plane3 = 0;
  if(plane4 > 450) plane4 = 0;

}


