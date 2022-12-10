class Spaceship extends Floater  
{   
  public Spaceship(){
    //ship
    corners = 14;
    xCorners = new int[]{-16,-16,-8,18,18,-8,-12,-14,-4,10,-12,-14,-4,10};
    yCorners = new int[]{-4,4,6,2,-2,-6,4,12,18,2,-4,-12,-18,-2};
    //-7,-8-1,0,-7,-8-1,0
    //6,6,11,10,-6,-6,-11,-10
    
    //color
    myColor = color(106,164,191);
    
    //positions
    myCenterX = 350;
    myCenterY = 350;
    myPointDirection = 0;
    
    //speed
    myXspeed = 0;
    myYspeed = 0;
  } //end of constructor
  
  public void hyperspace(){
    myXspeed = 0; 
    myYspeed = 0;
    myCenterX = (Math.random()*500+50);
    myCenterY = (Math.random()*500+50);
  } //end of no argument constructor
  
  public void setYspeed(int a){myYspeed = a;}
  public void setXspeed(int b){myXspeed = b;}
  //SET x and Y speed
  
  public double getXspeed(){return myXspeed;}
  public double getYspeed(){return myYspeed;}
  //GET X and Y speed 
  
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
  //GET X and Y coordinates
  
  public double getPointDirection(){return myPointDirection;}
  //GET ship's pointing direction

  /*public void accelerate(double dAmount){
    super.accelerate(0.5);
    if(dAmount > 4){
      dAmount = 4;
    }
  }*/
}
