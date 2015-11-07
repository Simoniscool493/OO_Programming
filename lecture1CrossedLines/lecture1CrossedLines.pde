void setup()
{
  size(500, 500);
  x = 10;
}

int x;

void draw()
{
  for(int i = 0; i <= width; i += 50)
  {
    line(i, 0, width-i, height);
  }
}


