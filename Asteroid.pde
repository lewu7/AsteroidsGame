class Asteroid extends Floater{
  private double rotSpeed; //ranbdomly + or - 
  
  public Asteroid(){
    //rotSpeed = (Math.random()*30-15); 
    rotSpeed = (Math.random()*5-3);
    
    //asteroids 
    myColor = color(165, 158, 158);
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11; 
    yCorners[0] =-8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0; 
    
    
    //speed
    myXspeed = 1.5;
    myYspeed = 1.5; 
    myPointDirection = (Math.random()*TWO_PI);
    
    //position
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    
  }
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  
  public double getX(){
    return myCenterX;
  }
  
  public double getY(){
    return myCenterY;
  }
  

}
