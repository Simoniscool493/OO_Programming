int i;
int numsquares = 16;
float rectsize;
boolean[] bool = new boolean[numsquares];

void setup()
{
  size(1000,1000);
  background(255);  
  rectsize = width/numsquares;
  text(50,50,50);
}


void draw()
{
  
  background(255);
  fill(0);
  text(binaryToDecimal(bool),width/2,height/4);
  
  for(i=0;i<numsquares;i++)
  {
    if(bool[i])
    {
      fill(0);
    }
    else
    {
      fill(200);
    }
    
    rect((width-i*rectsize-rectsize),(height/2-rectsize/2),rectsize,rectsize);
  }
}

void mousePressed()
{
  for(i=0;i<numsquares;i++)
  {
    if((mouseX > (width-(i*rectsize)-rectsize)) && (mouseX < (width-(i*rectsize))) && (mouseY > (width/2-rectsize/2)) && (mouseY < (width/2+rectsize/2)))
    {
      bool[i] = !bool[i];
    }
  }
}

int binaryToDecimal(boolean[] bool)
{
  int dec = 0;
 
  if(bool[numsquares-1] == false)
  {
    for(i=0;i<numsquares;i++)
    {
      if(bool[i]==(true))
      {
        dec +=pow(2,i);
      }
    }
  }
  else
  {
   for(i=0;i<numsquares-1;i++)
   {
     if(bool[i]==(false))
     {
       dec -=pow(2,i);
     }
    }
   dec-=1;
  }
  
  
  return dec;
  
}
