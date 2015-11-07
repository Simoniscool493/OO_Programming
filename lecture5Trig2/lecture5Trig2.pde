void setup()
{
  size(1000,1000);
  
  for(i = 0;i<width;i+=20)
  {
    line(width/2,height/2,i,height);
  }
}

int i;
float rad;
float segments;
float thetaInc;
float cx = width/2;
float cy = height/2;
float theta;
float x,y;


void draw()
{
  segments = 6;
  thetaInc = TWO_PI/segments;
  rad = 100;
  for(theta = 0;theta<TWO_PI;theta+=thetaInc)
  {
    x = 500+sin(theta)*rad;
    y = 500-cos(theta)*rad;
    ellipse(x,y,20,20);
  }
  
}

