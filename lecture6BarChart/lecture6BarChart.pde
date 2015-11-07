//arrays are bounds checked
//arrays are better in java :)
//they are *objects*, ooh, fancy
//objects have 'fields' which store data about it
//methods - operations on objects that change them
// objects have memory allocated to them or they are null

void setup()
{
  size(1000,1000);
  
  float boxWidth = width/rainfall.length;
  int scale = 7;
 
  for(int i=0;i<rainfall.length;i++)
  {
    float boxHeight = rainfall[i]*scale;
    
    fill(random(150,255),150,random(150,255));
    
    rect(i*boxWidth,height-(boxHeight),boxWidth,(boxHeight));
  }
  
  /*for(int i=0;i<rainfall.length;i++)
  {
    println(rainfall[i]);
  }
  
  for(float r:rainfall)
  {
    println(r);
  }//new type of loop!!!!!!!!! does the same as the prev loop
  */
  
  //println(sum(rainfall));
  //println(avg(rainfall));
  //println("Lowest is",months[minn(rainfall)]);
  //println("Highest is",months[maxx(rainfall)]);
}

//float[] rainfall = new float[12]; you gotta allocate memory to this array it dosent 
                                  //allocate memory automatically
                                  //'new' is our malloc
float[] rainfall = {45,37,55,27,38,50,79,48,104,31,100,58};
//declaring it with elements automatically alloctes memory enough for that amount
//of elements
String[] months = {"January","February","March","April","May","June","July","August","September","October","November","December"};
float barWidth = (width/rainfall.length);
void draw()
{

}

float sum(float[] rainfall)
{
  
  float ans = 0;
  
  for(int i = 0;i<rainfall.length;i++)
  {
    ans+=rainfall[i];
  }
  
  return ans;
}

float avg(float[] rainfall)
{
  return (sum(rainfall))/(rainfall.length);
}

int minn(float[] rainfall)
{
  
  int ans = 0;
  
  for(int i = 0;i<rainfall.length;i++)
  {
    if(rainfall[i]<rainfall[ans])
    {
      ans=i;
    }
  }
  
  return ans;
}

int maxx(float[] rainfall)
{
  
  int ans = 0;
  
  for(int i = 0;i<rainfall.length;i++)
  {
    if(rainfall[i]>rainfall[ans])
    {
      ans=i;
    }
  }
  
  return ans;
}

