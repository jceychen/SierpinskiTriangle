int len = 0;
public void setup()
{
  background(0);
  size (700, 700);
}

public void draw()
{
  sierpinski(0, height, len);
}

public void mouseDragged()//optional
{
  len = 0 + mouseX;
}

public void sierpinski(int x, int y, int len)
{
  if (len <= 25)
  {
    triangle (x, y, x + len/2, y - len, x + len, y);
  } 
  else
  {
    fill(len, len/3, len/2);
    triangle (x, y, x + len/2, y - len, x + len, y);
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
