Walker[] Jon;
Human [] Bob;
void setup()
{
  size (1000,1000);
  frameRate(100);
  Jon = new Walker[1000];
  Bob = new Human[10];
  for(int i = 0; i<Jon.length; i++)
  {
  Jon[i] = new Walker();
  }
  for(int i = 0; i<Bob.length; i++)
  {
  Bob[i] = new Human();
  }
}
void draw()
{
  background (0);
  for(int i = 0; i<Jon.length; i++)
  {
  Jon[i].walk();
  Jon[i].show();
  }
  for(int i = 0; i<Bob.length; i++)
  {
  Bob[i].walk();
  Bob[i].show();
  }  
}
class Walker
{
  int myX,myY,myColor;
  Walker()
  {
    myX = myY = 0;
    myColor = color(0,255,0);
  }
  void walk()
  {
    if (mouseX > myX)
      myX = myX + (int)(Math.random()*7)-2;
    else
      myX = myX - (int)(Math.random()*7)-2;
    if (mouseY > myY)
      myY = myY + (int)(Math.random()*7)-2;
    else
      myY = myY - (int)(Math.random()*7)-2;
  }
  void show()
  {
    fill(myColor);
    ellipse (myX,myY,30,30);
  }
}
class Human
{
  int myX,myY,myColor;
  Human()
  {
    myX = myY = 600;
    myColor = color(250,202,114);
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*5)-1;
    myY = myY + (int)(Math.random()*5)-3;
  }
  void show()
  {
    fill(myColor);
    ellipse (myX,myY,30,30);
  }
}
