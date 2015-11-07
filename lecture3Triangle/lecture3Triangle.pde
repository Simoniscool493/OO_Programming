void setup()
{
  size(1000,1000);
}

float h,o,a,theta;

void draw()
{
  
  o = 200;
  a = -(mouseY-700);
  h = sqrt((a*a)+(o*o));
  theta = 57.2957795*asin(o/h);
  
  background(192);
  
  line(500,700,500,mouseY);
  line(500,mouseY,300,700);
  line(300,700,500,700);
  
  text((int)o,400,750);
  text((int)a,550,700);
  text((int)(h),250,700);
  
  println("Theta =",theta);
  //ellipse(mouseX,mouseY,20,20);
}
