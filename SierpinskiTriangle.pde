int n = 100;
public void setup()
{
	size(500, 500);
	background(0);	
}

public void mousePressed()
{

	
	background(0);
	if (mouseButton == LEFT && n > 5)
		n /= 2;
	else if (mouseButton == RIGHT && n < 500)
		n *= 2;
	sierpinski(0, 500, 500);
}
public void draw()
{
	sierpinski(0, 500, 500);
}
public void sierpinski(int x, int y, int len)
{
	if (len > n)
	{
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}
	else
	{
		smooth();
		fill(255);
		triangle(x, y, x + len, y, x + len/2, y - len);
	}
}
