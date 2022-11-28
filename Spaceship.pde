class Spaceship extends Floater  
{   
  public Spaceship(){
    //ship
    corners = 5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8; 
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8; 
    
    //color
    myColor = color(255);
    
    //positions
    myCenterX = 350;
    myCenterY = 350;
    
    //speed
    myPointDirection = 0;
    myXspeed = 0;
    myYspeed = 0;
  } //end of constructor
  
  public void hyperspace(){
    myXspeed = 0; 
    myYspeed = 0;
    myCenterX = (Math.random()*500+50);
    myCenterY = (Math.random()*500+50);
    myPointDirection = (int)(Math.random()*360);
  }
  
  public void setYspeed(int a){
    myYspeed = a; 
  }
  
  public void setXspeed(int b){
    myXspeed = b; 
  }
}
