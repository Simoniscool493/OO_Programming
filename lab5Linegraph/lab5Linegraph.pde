float[] rainfall = {45,37,55,27,38,50,79,48,104,31,100,58};
String[] months = {"January","February","March","April","May","June","July","August","September","October","November","December"};


void setup()
{
  size(1000,1000);
  background(0);
  
  float border = 50;
  float boxWidth = width/rainfall.length;
  float scale = 4;
  float gap = 15*scale;
  float cap = 150;
  int numHeights = 15;
   
  stroke(255);
  drawHorizontal(border,gap);
  drawVertical(border,scale,cap,numHeights);
  drawGraph(border,gap,scale);

}

void drawGraph(float border,float gap,float scale)
{
  for(int i=0;i<rainfall.length-1;i++)
  {
    float x1 = border+(i*gap);
    float y1 = height-border-(rainfall[i]*scale);
    float x2 = (border+((i*gap)+gap));
    float y2 = height-border-(rainfall[i+1]*scale);
    
    line(x1,y1,x2,y2);
  }
}

void drawHorizontal(float border,float gap)
{
  
  line(border,height-border,border+(gap*rainfall.length)-gap,height-border);

  for(int i=0;i<(rainfall.length);i++)
  {
    line(border+(i*gap),height-border,border+(i*gap),height+5-border);
    
    text(months[i],(border+i*gap),height-border+25);
  }
}

void drawVertical(float border,float scale, float cap,int numHeights)
{
    float gap2 = cap/numHeights;
    line(border,height-border-(cap*scale),border,height-border);

  for(int i=0;i<numHeights+1;i++)
  {
    float heightInc = height-((i*gap2*scale)+border);
    
    line(border,heightInc,border-5,heightInc);
    text(i*gap2,border-50,heightInc);
  }
}


