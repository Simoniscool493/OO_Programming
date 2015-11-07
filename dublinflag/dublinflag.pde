void setup()
{
  //at the start
  size(800,800);
  background(0);
  stroke(255);
  fill(0);
}

void draw()
{
  boolean lightblue = true;
  int x,y;
  int across = 8;
  int down = 5;
  int square_size = 100;
  
  for(y=0;y<down*square_size;y+=square_size)
  {
    for(x=0;x<across*square_size;x+=square_size)
    {
      if(lightblue)
      {
        fill(204,255,255);
      }
      else
      {
        fill(0,0,128);
      }
      rect(x,y,square_size,square_size);
      lightblue = !lightblue;
      //The best line of code you'll ever write is code you didn't have to write
    }
    lightblue = !lightblue;
  }
}

