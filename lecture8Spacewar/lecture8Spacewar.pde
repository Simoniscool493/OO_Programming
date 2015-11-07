float x = 500;
float y = 500;

void setup()
{
  size(1000,1000);
}

void draw()
{
  background(192);
  ellipse(x,y,50,50);
}

void keyTyped()
{
  if(key=='w')
  {
    y-=50;
  }
  if(key=='s')
  {
    y+=50;
  }
  if(key=='a')
  {
    x-=50;
  }
  if(key=='d')
  {
    x+=50;
  }
}
