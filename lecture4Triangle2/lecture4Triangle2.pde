void setup()
{
  size(500, 500);
}

float o, a;
float theta = 27;
float px = 100;
float py = 400;
float h = 176;

void draw()
{
  
  background(192);
  
  h = height-mouseY;
  o = sin(radians(theta))*h;
  a = cos(radians(theta))*h;
  
  line(px,py,px+a,py-o);
  line(px+a,py-o,px+a,py);
  line(px,py,px+a,py);
  
  text("Kite Extends: " + h,10,20);
  text("Kite Height: " + o,10,40);
  text("Kite Horizontal Distance: " + a,10,60);
  
}

