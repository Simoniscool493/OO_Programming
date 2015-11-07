

void setup()
{
  background(0);
  fill(0);
  stroke(255,255,0);
  size(1000,1000);
}

void draw()
{
  int eyesize = 9;
  int eyedist = 30; //from left
  int eyeheight = 20; //from top
  
  int nosesize = 9;
  int nosedist = 50;
  int noseheight = 50;
  
  int i,j;
  int k = 5;
  
  for(j=0;j<height;j=j+100)
  {
    for(i=0;i<width;i=i+100)
    {
      ellipse(i+50,j+50,100,100);                        //face
      ellipse(i+eyedist,j+eyeheight,eyesize,eyesize);    //left eye
      ellipse(i+100-eyedist,j+eyeheight,eyesize,eyesize);//right eye
      ellipse(i+nosedist,j+noseheight,nosesize,nosesize);//nose
      line(i+35,j+75,i+65,j+75);                         //mouth
      line(i+35,j+75,i+30,j+75-k);                       //left mouth
      line(i+65,j+75,i+70,j+75-k);                       //right mouth
      k = k*-1;
    }
    k = k*-1;
  }
}
