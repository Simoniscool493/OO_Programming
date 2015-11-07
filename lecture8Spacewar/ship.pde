class Ship
{
  float x, y;
  float w;
  float halfW;
  
  Ship()
  {
    float x = 100;
    float y = 100;
    float w = 50;
    float halfW = w *0.5f;
  }
  
  void render()
  {
    ellipse(x,y,50,50);
  }
  
  
  
  
  
}
