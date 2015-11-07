void setup()
{
  size(500,500);
   
  println(binaryToDecimal("10011"));
}

int binaryToDecimal(String binary)
{
  int dec = 0;
 
  for(int i = 0;i<binary.length();i++)
  {
    if((binary.charAt(i))==('1'))
    {
      dec +=pow(2,binary.length()-i-1);
    }
  }
    return dec;
  
}

/*void printCharsOnLine(String s)
{
  for(int i = s.length()-1;i>=0;i--)
  {
    char c = s.charAt(i);
    println(c);
  }
}*/
