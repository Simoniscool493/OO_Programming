void setup()
{
  //println(mapRange(6,0,20,0,100));

  float[] arr = new float[5];
  arr[0] = 99;
  arr[1] = 10;
  arr[2] = 10;
 
  ArrayList<Float> arrList = new ArrayList<Float>();
  //arrList.add(99);
  //arrList.add(10);
  //arrList.add(10);

  for(int i=0;i<arrList.size();i++)
  {
    println(arrList.get(i));
  }
  
  for(float f:arrList)
  {
    println(f);
  }
  
  String fsVal = "100.99";
  float fVal = Float.parseFloat(fsVal);  //Java
  fVal = parseFloat(fsVal);
  
  String[] lines = loadStrings("hellofiles.txt");
  
  for(String s:lines)
  {
    String[] words = s.split(" ");
    for(String w:words)
    {
      println(w);
    }
    println(s);
  }
}




float mapRange(float value,float start1,float stop1,float start2,float stop2)
{
  float range1 = stop1-start1;
  float range2 = stop2-start2;
  
  return ((range2/range1)*(value-start1))+start2;
}
