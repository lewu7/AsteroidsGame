class Bullet extends Floater{
  
  public Bullet(Spaceship ship){
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    
    myPointDirection = ship.getPointDirection();
    accelerate(35); 
    myColor = color(255);
  }
  
  public void show(){
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  
  public void move(){
    myCenterX += myXspeed;
    myCenterY += myYspeed;
    
    
    /*for(int s = 0; s < ammo.size(); s++){
      if(ammo.get(s).getX() > width){
        ammo.get(s).myCenterX = ship.getX();
        ammo.get(s).myCenterY = ship.getY();
      }
    }*/
  }
  
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
}
