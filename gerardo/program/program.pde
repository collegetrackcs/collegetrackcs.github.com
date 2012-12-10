// Basic Batting Game

boolean ballRight = true;
boolean paddleMoving = false;
int ballX = 0;
float rotatePaddle = 0.0;


void setup ()
{
        size(400,400);
        noStroke();
}

void draw() {
        background(100, 34, 56);
        fill(300, 350, 255);
        ellipse(ballX, 100, 50, 50);
        
        if(ballRight) ballX +=5;
        else
        {
          ballX +=-5;
        }
        
        if(paddleMoving) rotatePaddle += 0.05;

        translate(350,50);
        rotate(rotatePaddle);
        rect(0, 0, 10, 100);
        
        if(keyPressed && keyCode == LEFT) // ball is moving
        {
           paddleMoving = true;
        }
        
        if(rotatePaddle >= HALF_PI) 
        {
          paddleMoving = false;
        }
        
        
        if(paddleMoving && (ballX > 300 && ballX < 350))
        {
          ballRight = false;
        }
        
        
        if(ballRight && ballX > 400)
        {
          ballX = -50;
                    rotatePaddle = 0.0;

        }
        if(!ballRight && ballX < -50)
        {
          ballRight = true;
          rotatePaddle = 0.0;
        }
        
        
      
}        
                
