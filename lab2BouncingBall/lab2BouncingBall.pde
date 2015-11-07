
int boxwidthstart,boxheightstart,boxwidth,boxheight;
int xspeed = -50;
int yspeed = 10;
int xpos = 263;
int ypos = 849;
int circlesize = 70;
boolean red = false;

void setup()
{
  size(2500,1300);
  
  boxwidthstart = ((int)((width/2)-((float)width*((float)15/100))));
  boxheightstart = ((int)((height/2)-((float)height*((float)15/100))));
  boxheight = ((int)(((float)height)*((float)30/100)));
  boxwidth = ((int)(((float)width)*((float)30/100)));
}

void mousePressed()
{
  if((mouseX > boxwidthstart)&&(mouseX < (width-boxwidthstart))&&(mouseY > boxheightstart)&&(mouseY < (height-boxheightstart)))
  {
  red = !red;
  }
}

void draw()
{
  //background(192);
  
  /*if(red)
  {
    fill(255,0,0);
  }
  else if((mouseX > boxwidthstart)&&(mouseX < (width-boxwidthstart))&&(mouseY > boxheightstart)&&(mouseY < (height-boxheightstart)))
  {
    fill(51,102,153);
  }
  else
  {
    fill(128);
  }
  
  rect(boxwidthstart,boxheightstart,boxwidth,boxheight);*/
  
  xspeed+=(random(20))-10;
  xspeed+=(random(20))-10;
  fill(random(255),random(255),random(255));
  //fill(xpos/20,ypos/20,(xpos+ypos)/20);
  
  if((xpos+(circlesize/2)) >= width || (xpos-(circlesize/2)) <= 0)
  {
    xspeed = xspeed*-1;
  }
  if((ypos+(circlesize/2)) >= height || (ypos-(circlesize/2)) <= 0)
  {
    yspeed = yspeed*-1;
  }
  ellipse(xpos,ypos,circlesize,circlesize);
  xpos+=xspeed;
  ypos+=yspeed;
}
