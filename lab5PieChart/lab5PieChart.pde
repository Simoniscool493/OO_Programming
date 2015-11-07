float[] rainfall = {45,37,55,27,38,50,79,48,104,31,100,58};
String[] months = {"January","February","March","April","May","June","July","August","September","October","November","December"};


void setup()
{
  size(1000,1000);
  background(0);
 
 float[] rainpi = new float[rainfall.length];
 int i;
 float rad = 250;
 
 for(i=0;i<rainpi.length;i++)
 {
   rainpi[i] = (rainfall[i]/sum(rainfall))*TWO_PI;
 }
 
 drawCircle(rainpi);

 i=0;
 fill(255);
 
 for(float theta=0;i<rainfall.length-1;theta+=rainpi[i])
 {
   
   float x = 500+sin(theta)*rad;
   float y = 500-cos(theta)*rad;
   ellipse(x,y,50,50);
   println(theta);
   i++;
   
 }
 
}

void drawCircle(float[] rainpi)
{
  
 float angle = 5-0.7;
 
 for(int i=0;i<rainfall.length;i++)
 {
   fill(random(255),random(255),random(255));
   arc(width/2,height/2, 500, 500,angle,angle+rainpi[i]);
   angle+=rainpi[i];
   
 }
 
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
