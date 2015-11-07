void setup()
{
  size(1700,1500);
  frameRate(100);
  background(0);
  amount = 200;
  size = 75;
  armrange = 100;
  
  
}

int armrange;
int size;
int amount;
float arms;
float thetaInc;
float innerRad;
float outerRad;
float cx, cy;
int i;
int j = 0;

void draw()
{
   if(j<amount)
     {
     stroke(random(255),random(255),random(255));
     arms = (int)random(armrange-5)+5;
     thetaInc = TWO_PI / arms;
     innerRad = (int)random(size/4)+size/4;
     outerRad = (int)random(size/2)+size/2;
     cx = random(width);
     cy = random(height);
     
     for(i=0;i<arms;i++)
     {
       line(cx+outerRad*cos(thetaInc*i),cy+outerRad*sin(thetaInc*i),cx+innerRad*cos((thetaInc*i)+(PI/arms)),cy+innerRad*sin((thetaInc*i)+(PI/arms)));
       line(cx+outerRad*cos(thetaInc*i),cy+outerRad*sin(thetaInc*i),cx+innerRad*cos((thetaInc*(i-1))+(PI/arms)),cy+innerRad*sin((thetaInc*(i-1))+(PI/arms)));
     }
     j++;
   }
   
}
