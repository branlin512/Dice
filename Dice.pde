void setup()
{
	noLoop();
	size(500,600);
}
void draw()
{
  background(192);
  int drawX, drawY;
  int sumTingWong=0;
  for(drawY=0; drawY<=450; drawY+=72) {
    for(drawX=0; drawX<=450; drawX+=72) {
      Die nuDie=new Die(drawX,drawY);
      nuDie.roll();
      nuDie.show();
      sumTingWong+=nuDie.dieVal;
     }
  }
  int randR=(int)(Math.random()*256);
  int randG=(int)(Math.random()*256);
  int randB=(int)(Math.random()*256);
  fill(randR,randG,randB);
  textSize(21);
  text("Sum: "+sumTingWong,230,550);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
  int xPos, yPos, dieVal;
  Die(int x, int y) //constructor
	{
	  xPos=x;
    yPos=y;
    roll();
	}
	void roll()
	{
		int faceVal=(int)(Math.random()*6)+1;
    dieVal=faceVal;
	}
	void show()
	{
		fill(255);
		rect(xPos,yPos,72,72);
    int randR=(int)(Math.random()*256);
    int randG=(int)(Math.random()*256);
    int randB=(int)(Math.random()*256);
    if (dieVal==1) {
      fill(randR,randG,randB);
      ellipse(xPos+36, yPos+36, 5, 5);
    }
    // else if statements for all other pssibledieVal values
    else if (dieVal==2) {
      fill(randR,randG,randB);
      ellipse(xPos+18,yPos+54,5,5);
      ellipse(xPos+54,yPos+18,5,5);
	  }
    else if (dieVal==3) {
      fill(randR,randG,randB);
      ellipse(xPos+18,yPos+54,5,5);
      ellipse(xPos+36,yPos+36,5,5);
      ellipse(xPos+54,yPos+18,5,5);
    }
    else if (dieVal==4) {
      fill(randR,randG,randB);
      ellipse(xPos+18,yPos+54,5,5);
      ellipse(xPos+18,yPos+18,5,5);
      ellipse(xPos+54,yPos+18,5,5);
      ellipse(xPos+54,yPos+54,5,5);
    }
    else if (dieVal==5) {
      fill(randR,randG,randB);
      ellipse(xPos+18,yPos+54,5,5);
      ellipse(xPos+18,yPos+18,5,5);
      ellipse(xPos+54,yPos+18,5,5);
      ellipse(xPos+54,yPos+54,5,5);
      ellipse(xPos+36,yPos+36,5,5);
    }
    else {
      fill(randR,randG,randB);
      ellipse(xPos+24,yPos+18,5,5);
      ellipse(xPos+24,yPos+36,5,5);
      ellipse(xPos+24,yPos+54,5,5);
      ellipse(xPos+48,yPos+18,5,5);
      ellipse(xPos+48,yPos+36,5,5);
      ellipse(xPos+48,yPos+54,5,5);
    }
  }
}
