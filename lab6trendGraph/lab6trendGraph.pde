
void setup()
{
  size(1000,1000);
  background(0);
  stroke(255);
  String[] data = loadStrings("sum.csv");
  float[] numData = new float[data.length];
  float border = width/10;
  float gap = (width-border*2)/data.length;
  float scale = 0.5;
  int numHeights = 20;
  int cap = 1500;
  
  for(int i=0;i<data.length;i++)
  {
    numData[i] = Float.parseFloat(data[i]);
  }
  
  drawGraph(border,gap,scale,numData);
  drawHorizontal(border,gap,numData);
  drawVertical(border,scale,cap,numHeights);
 
}


void drawGraph(float border,float gap,float scale,float[] numData)
{
 for(int i=0;i<numData.length-1;i++)
  {
    float x1 = border+(i*gap);
    float y1 = height-border-(numData[i]*scale);
    float x2 = (border+((i*gap)+gap));
    float y2 = height-border-(numData[i+1]*scale);
    
    line(x1,y1,x2,y2);
  }
}

void drawHorizontal(float border,float gap,float[] numData)
{
  
  line(border,height-border,border+(gap*numData.length)-gap,height-border);

  for(int i=0;i<(numData.length);i++)
  {
    line(border+(i*gap),height-border,border+(i*gap),height+5-border);
    
    text(i+1850,(border+i*gap),height-border+25);
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
