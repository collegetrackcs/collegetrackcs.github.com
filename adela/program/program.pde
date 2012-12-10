
int x=25;
int y= -25;
int speed= 10;

void setup()
{
  size(400,400);
  //smooth();
  noStroke();
  

}
void draw()
{
//background(0, 200, 180);
background(0, 0, 0);
ellipse( x, 30, 60, 60);
fill(50, 0, 50);
ellipse(x, 200, 60, 60);
fill(200, 0, 0);
rect(y, 100, 50, 50);
rect(20, 40, 20, x);
fill(0, 200, 0);
rect(20, 20, y, 20);
fill( 0, 0, 200);
size( 400, 400);
if (x>400) {
  speed= -10;
}
if(x<0) {
  speed= 10;
}
if (y>400) {
  speed= -10;
}
if (y<0) {
  speed= 10;
}
x= x + speed;
y= y + speed;
}

