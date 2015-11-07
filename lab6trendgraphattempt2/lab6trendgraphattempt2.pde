void setup()
{
  size(3000,1500);
  background(0);
  stroke(255);
  String[] data0 = loadStrings("stats.csv");
  ArrayList<Float> data = new ArrayList<Float>();
  float border = 100;
  float gap = (width-2*border)/data0.length;
  float scale = 0.8;
  int numLabelsV = 20;
  int numLabelsH = 40;
  
  for(int i=0;i<data0.length;i++)
  {
    data.add(Float.parseFloat(data0[i]));
  }
  
  float highest = findHighest(data);
  float lowest = findLowest(data);
  float cap = 1300;

  drawGraph(data,gap,scale,border);
  drawVertical(border,cap,scale,numLabelsV);
  drawHorizontal(gap,scale,border,numLabelsH);
}

void drawHorizontal(float gap,float scale,float border,int numLabels)
{
  stroke(255);
  line(border,height-border,width-border,height-border);
  
  for(int i=0;i<=width-border*2;i+=(width-border*2)/numLabels)
  {
    line(border+i,height-border,border+i,height-border+10);
    text((int)(1850+(float)i*(160.00/(float)(width-border*2))),border+i,height-border+50);
  }
}

void drawVertical(float border,float cap,float scale,int numLabels)
{
  stroke(255);
  line(border,height-border,border,height-border-cap*scale);
  
  for(int i=0;i<=cap;i+=(cap/numLabels))
  {
    float lineHeight = height-border-(i*scale);
    line(border,lineHeight,border-10,lineHeight);
    text(i,border-50,lineHeight);
  }
}

void drawGraph(ArrayList<Float> data,float gap,float scale,float border)
{
  stroke(0,255,255);
  for(int i=0;i<data.size()-1;i++)
  {
    Float x1 = border+(i*gap);
    Float y1 = height-border-scale*(data.get(i));
    Float x2 = border+(i*gap)+gap;
    Float y2 = height-border-scale*(data.get(i+1));

    line(x1,y1,x2,y2);
  }
}
  
float findHighest(ArrayList<Float> data)
{
  float ans = data.get(0);

  for(int i=0;i<data.size();i++)
  {
    if(data.get(i)>ans)
    {
      ans = data.get(i);
    }
  }
  return ans;
}

float findLowest(ArrayList<Float> data)
{
  float ans = data.get(0);

  for(int i=0;i<data.size();i++)
  {
    if(data.get(i)<ans)
    {
      ans = data.get(i);
    }
  }
  return ans;
}
