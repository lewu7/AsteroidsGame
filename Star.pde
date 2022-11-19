class Star //note that this class does NOT extend Floater
{
  private int myX, myY; 
  private int myColor; 
  private int mySize; 
  
  public Star(){ //230
    myColor = color((int)(Math.random()*100+200), (int)(Math.random()*100+200), (int)(Math.random()*100+200));
    myX = (int)(Math.random()*width-50);
    myY = (int)(Math.random()*height-50);
    mySize = (int)(Math.random()*5+5);
  }
  
  public void show(){
    fill(0, 5);
    rect(0,0, width, height);
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
}
