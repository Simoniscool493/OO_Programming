// The class name starts with uppercase
class Ship
{
  // Fields!
  PVector pos;
  PVector forward;
  float w;
  float halfW;
  float theta;
 
  // Constructor!!
  // HAS NO RETURN TYPE
  // Name is always the same as the class
  Ship(float x,float y,float w)
  {
    pos = new PVector(x,y);
    forward = new PVector(0,-1);
    this.w = w;
    this.halfW = x*0.1f;
  }
  
  Ship()
  {
    //Constructor chaining
    this(width*0.5f,height*0.5f,50);
  }
  
  void update()
  {
    forward.x = sin(theta);
    forward.y = -cos(theta);
    if (keyPressed)
    {
      if (key == 'w')
      {
        pos.add(forward);
      }
      if (key == 'a')
      {
        theta -= 0.1;
      }
      if (key == 'd')
      {
        theta += 0.1;
      }
      
    }
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(theta);
    stroke(255);
    line(-halfW, halfW, 0, -halfW);
    line(0, -halfW, halfW, halfW);
    line(halfW, halfW, 0, 0);
    line(-halfW, halfW, 0, 0);
    popMatrix();
  }   
}

// The class name starts with uppercase
class AIShip
{
  // Fields!
  PVector pos;
  PVector forward;
  float w;
  float halfW;
  float theta;
 
  // Constructor!!
  // HAS NO RETURN TYPE
  // Name is always the same as the class
  AIShip(float x,float y,float w)
  {
    pos = new PVector(x,y);
    forward = new PVector(0,-1);
    this.w = w;
    this.halfW = x*0.1f;
  }
  
  AIShip()
  {
    //Constructor chaining
    this(width*0.5f,height*0.5f,50);
  }
  
  void update()
  {
    forward.x = sin(theta);
    forward.y = -cos(theta);
    
    forward.mult(2);
  
    pos.add(forward);
    
    if(pos.x<0||pos.y<0||pos.x>width||pos.y>height)
    {
      theta += PI/2;
    }
   
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(theta);
    stroke(255);
    line(-halfW, halfW, 0, -halfW);
    line(0, -halfW, halfW, halfW);
    line(halfW, halfW, 0, 0);
    line(-halfW, halfW, 0, 0);
    popMatrix();
  }   
}

