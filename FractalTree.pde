private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .4;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(135, 206, 250);   
	stroke(34, 139, 34);   
	line(320,480,320,380);   
	drawBranches(320, 380, 100, branchAngle);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	if(branchLength <= smallestBranch)
	{

	}
	else
	{
		line(x, y, x + (int)(branchLength * Math.cos(angle)), y - (int)(branchLength * Math.sin(angle)));
		line(x, y, x - (int)(branchLength * Math.cos(angle)), y - (int)(branchLength * Math.sin(angle)));
		drawBranches(x + (int)(branchLength * Math.cos(angle)), y - (int)(branchLength * Math.sin(angle)), branchLength * fractionLength, angle * 1.3);
		drawBranches(x - (int)(branchLength * Math.cos(angle)), y - (int)(branchLength * Math.sin(angle)), branchLength * fractionLength, angle * 1.3);
	}
} 
