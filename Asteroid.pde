class Asteroid extends Floater{
  private double rotSpeed; //ranbdomly + or - 
  
  public Asteroid(){
    rotSpeed = (Math.random()*5-3);
    
    //asteroids 
    myColor = color(126,126,126);
    corners = 17;
    xCorners = new int[]{-32, -30, -26, -16, 0, 4, 26, 32, 38, 40, 38, 32, 16, 0, -14, -28, -30};
    yCorners = new int[]{6, 12, 20, 28, 32, 34, 32, 24, 14, 8, 0, -6, -10, -8, -10, -8, -4}; 
    
    //speed
    myXspeed = 2;
    myYspeed = 2; 
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
