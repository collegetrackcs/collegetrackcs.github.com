int sphereDiameter = 10;
  boolean shoot = false;
  int cols=10;
  int rows=5;
  
  int randx()
  {
    return int(random(400));
  }
  
  int[] sphereXCoords = { randx(), randx(), randx(), randx(), randx() };
  int[] sphereYCoords = { 0, 0, 0, 0, 0 };
  
  void setup()
  {
    size(400,400);
  }
  
  void draw()
  {
    background(0);
    fill(color(0,255,0));
    stroke(color(0,255,0));
    triangle(mouseX-8, 380, mouseX+8, 380, mouseX, 365);
    fill(color(255,0,0));
    stroke(color(255,0,0));
  
    if(shoot==true)
    {
      sphereKiller(mouseX);
      shoot = false;
    }
  
    sphereDropper();

  }
  
  void mousePressed()
  {
    shoot = true;
  }
  
  void sphereDropper()
  {  
    stroke(255);
    fill(255);
    for (int i=0; i<5; i++)
    {
      ellipse(sphereXCoords[i], sphereYCoords[i]++,
              sphereDiameter, sphereDiameter);
    }
  }
  
  void sphereKiller(int shotX)
  {
    boolean hit = false;
    for (int i = 0; i < 5; i++)
    {
      if((shotX >= (sphereXCoords[i]-sphereDiameter/2)) && 
         (shotX <= (sphereXCoords[i]+sphereDiameter/2)))
      {
        hit = true;
        line(mouseX, 365, mouseX, sphereYCoords[i]);
        ellipse(sphereXCoords[i], sphereYCoords[i],
                sphereDiameter+25, sphereDiameter+25);
        sphereXCoords[i] = randx();
        sphereYCoords[i] = 0;
      }    
    }
  
    if(hit == false)
    {
      line(mouseX, 365, mouseX, 0);
    }  
  
  }
  
