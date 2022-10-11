void setup()
{
  size(800,800);
  noLoop();
}
void draw()
{
  background(#14FF05);
  int sum = 0;
  for (int y= 0; y < 500; y = y +50){
    for(int x = 0; x < 500; x = x + 50){
       Die bob = new Die(x,y);
       bob.show();
       if(bob.roll < 5){
         sum = sum + bob.roll;
       }
    }
  }
  text("Total = " + sum, 350, 40);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY;
  int roll;
  Die(int x, int y) //constructor
  {
    roll();
    myY = y;
    myX = x;
}
void roll()
{
  roll = (int)(Math.random()*6)+1;
}
void show()
{
  fill((int)(Math.random()*365+30),(int)(Math.random()*365+30),(int)(Math.random()*365+30));
  rect(myX + 70, myY + 70, 60, 60);
  if(roll == 1){
    fill(0);
    ellipse(myX+100, myY+100, 5, 5);
  }
  if(roll == 2){
    fill(0);
    ellipse(myX+90, myY+100, 5, 5);
    ellipse(myX+110, myY+100, 5, 5);
  }
  if(roll == 3){
    fill(0);
    ellipse(myX+100, myY+100, 5, 5);
    ellipse(myX+90, myY+90, 5, 5);
    ellipse(myX+110, myY+110, 5, 5);
  }
  if(roll == 4){
    fill(0);
    ellipse(myX+90, myY+90, 5, 5);
    ellipse(myX+90, myY+110, 5, 5);
    ellipse(myX+110, myY+90, 5, 5);
    ellipse(myX+110, myY+110, 5, 5);
  }
  if(roll == 5){
    fill(0);
    ellipse(myX+100, myY+100, 5, 5);
    ellipse(myX+90, myY+90, 5, 5);
    ellipse(myX+90, myY+110, 5, 5);
    ellipse(myX+110, myY+90, 5, 5);
    ellipse(myX+110, myY+110, 5, 5);
  }
  if(roll == 6){
    fill(0);
    ellipse(myX+90, myY+90, 5, 5);
    ellipse(myX+90, myY+100, 5, 5);
    ellipse(myX+90, myY+110, 5, 5);
    ellipse(myX+110, myY+90, 5, 5);
    ellipse(myX+110, myY+100, 5, 5);
    ellipse(myX+110, myY+110, 5, 5);
  }
 }
}
