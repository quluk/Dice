class Dice
{
  //three member variables
  int value;
  int myX, myY,size;

  //three member functions
  Dice(int x, int y, int s) //constructor
  {
    myX=x;
    myY=y;
    size = s;
    value=(int)(Math.random()*6);
  }
  int roll()
  {
  value=(int)(Math.random()*6);
  return value+1;
  }
  void show()
  {
    fill(220,80,70);
    rect(myX,myY,size,size,28);
    fill(255,255,255);
    if (value==0)
      ellipse(myX+size/2,myY+size/2,size-120,size-120);
    if (value==1){
      ellipse(myX+40,myY+40,size-120,size-120);
      ellipse(myX+110,myY+110,size-120,size-120);
    }
    if (value==2){
      ellipse(myX+40,myY+40,size-120,size-120);
      ellipse(myX+110,myY+110,size-120,size-120);
      ellipse(myX+size/2,myY+size/2,size-120,size-120);
    }
    if (value==3){
      ellipse(myX+40,myY+40,size-120,size-120);
      ellipse(myX+110,myY+110,size-120,size-120);
      ellipse(myX+40,myY+110,size-120,size-120);
      ellipse(myX+110,myY+40,size-120,size-120);
    }
    if (value==4){
      ellipse(myX+40,myY+40,size-120,size-120);
      ellipse(myX+110,myY+110,size-120,size-120);
      ellipse(myX+40,myY+110,size-120,size-120);
      ellipse(myX+110,myY+40,size-120,size-120);
      ellipse(myX+size/2,myY+size/2,size-120,size-120);
    }
    if (value==5){
      ellipse(myX+40,myY+40,size-120,size-120);
      ellipse(myX+110,myY+110,size-120,size-120);
      ellipse(myX+40,myY+110,size-120,size-120);
      ellipse(myX+110,myY+40,size-120,size-120);
      ellipse(myX+40,myY+75,size-120,size-120);
      ellipse(myX+110,myY+75,size-120,size-120);
    
    
    }
  }
}
Dice dying;
void setup()
{
  background(0,150,50);
  size(1000,1000);
  textAlign(CENTER,CENTER);
  noLoop();

}
  int counter;
void draw()
{
  counter=0;
    for (int t=0;t<=1000;t+=200){
  for (int i=50;i<=1000;i+=200){
  dying = new Dice(i,t,150);
   counter+= dying.roll();
  dying.show();

  }
  }
fill(0,0,0);
text(counter, 500,500);
 //dying.show();
 
 
 
}
void mousePressed()
{
  redraw();
}
