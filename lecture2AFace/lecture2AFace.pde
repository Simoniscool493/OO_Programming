void setup()
{
  size(500,500);
  stroke(255);
  fill(0);
  
  x = radius;
  y = height-radius;
  speed = 10;
  xspeed = speed;
  yspeed = 0;
}

  int radius = 25;
  float x,y;
  int xspeed;
  int yspeed;
  int speed;
  
  float theta = 0;
  int big_rad = 200;


void draw()
{
  
  background(0);
  
  x = (width/2) + sin(theta)*big_rad;
  y = (height/2) + cos(theta)*big_rad;
  
  theta += 0.0f;
  
  
  
  ellipse(x,y,radius*2,radius*2);
  ellipse(x-10,y-10,5,5);
  ellipse(x+10,y-10,5,5);
  ellipse(x,y,5,5); 
  line(x-10,y+10,x+10,y+10);

  x += xspeed;
  y += yspeed;
  
  /*if(x>width-radius)
  {
    xspeed = 0;
    yspeed = -speed;
    x = width-radius;
  }
  if(y<radius)
  {
    xspeed = -speed;
    yspeed = 0;
    y = radius;
  }
  if(x<radius)
  {
    xspeed = 0;
    yspeed = speed;
    x = radius;
  }
  if(y>height-radius)
  {
    xspeed = speed;
    yspeed = 0;
    y = height-radius;
  }*/
  
  
  
   println(xspeed);
   println(yspeed);
}
