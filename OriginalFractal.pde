boolean t=false;
public void setup()
{
  size(700,700);
}
public void draw()
{
  background(0);
  myFractal(350,350,480);
}
public void myFractal(int x, int y, int siz)
{
  sierpinski(x-siz/2,y+siz/2,siz);
  if(siz > 10)
  {
    myFractal(x-siz/2,y,siz/2);
    myFractal(x+siz/2,y,siz/2);
  }
}
public void sierpinski(int x, int y, int len) 
{
	if (len < 20)
	{
		if(t == true)
			{
			fill((int)Math.random()*255);
			}
		else 	
		{
		    fill((int)(Math.random()*255),(int)(Math.random()*25),(int)(Math.random()*255));
			triangle(x+5, y+5, x + len , y, x + len/2, y - len);
		}
	}
	else
	{
		sierpinski(x,y, len/2);
		sierpinski(x + len/2,y,len/2);
		sierpinski(x + len/4,y - len/2, len/2);
	}
}
