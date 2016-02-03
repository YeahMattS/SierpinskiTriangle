public void setup()
{
	// translate(250, 250, 0);
	size(500, 500);
	background(0);	
	// noFill();
	// rotateY(0.5);
	// box(40);
}
private int n = 100;
public void mousePressed()
{
	if (mouseButton == LEFT && n > 5)
		n /= 2;
	else if (mouseButton == RIGHT && n < 500)
		n *= 2;
	background(0);
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
	// if (len > 20)
	// {
	// 	pyramid(x, y, z, len/2);
	// 	pyramid(x + len/2, y, z, len/2);
	// 	pyramid();
	// 	pyramid();
	// 	pyramid();
	// }
}
// public void pyramid(int x, int y, int z, int len)
// {
// 	// 3D graphics wouldn't work
// 	line(x, y, z, x + len, y, z);
// 	line(x, y, z, x, y, z - len);
// 	line(x + len, y, z, x + len, y, z - len);
// 	line(x, y, z - len, x + len, y, z - len);
// 	line(x + len, y, z, x + len/2, y - len, z - len/2);
// 	line(x, y, z - len/2, x + len/2, y - len, z - len/2);
// 	line(x + len, y, z - len, x + len/2, y - len, z - len/2);
// 	line(x, y, z, x + len/2, y - len, z - len/2);
// }