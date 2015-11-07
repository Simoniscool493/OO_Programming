void setup()
{

  String[] lines = loadStrings("sum.csv");
  float max = 0;
  float min = 9999;
  int maxYear = 0;
  int minYear = 0;
  
  for(int i=0;i<lines.length;i++)
  {
    float fVal = Float.parseFloat(lines[i]);
    if(fVal > max)
    {
      max = fVal;
      maxYear = i;
    }
    if(fVal < min)
    {
      min = fVal;
      minYear = i;
    }
  }
  
  maxYear+=1850;
  minYear+=1850;
  println("The highest rainfall is",max,"from the year",maxYear);
  println("The lowest rainfall is",min,"from the year",minYear);

}


//  ArrayList<Float> arrList = new ArrayList<Float>();


