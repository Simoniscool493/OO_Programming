void setup()
{
  size(1600,1600);
  cx = width/2.0f;
  cy = height/2.0f;
 
}

float cx,cy;
float r;
float x;
float arms;
float frameOffset =0;

void draw()
{
  background(0);
  
  float g = random(255);
  float b = random(255);
  
  stroke(76,286,165);
  fill(267,185,76);
  
  float thetaInc = TWO_PI / arms;
  
  r = 10;
  arms = 20;
  
  float offset = 0.1f;
  
  for(int cCount = 0;cCount<20;cCount++)
  {
    
    for(float theta = 0;theta < TWO_PI;theta += thetaInc)
    {
      
      float x,y;
      x = cx + (sin(theta + frameOffset) * r);
      y = cy - (cos(theta + frameOffset) * r);
      ellipse(x,y,30,30);
      
    }
    
    r+=30f;
    frameOffset+=0.00001;
    
  }
  
}
