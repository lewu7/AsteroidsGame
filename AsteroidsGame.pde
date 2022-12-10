Star[] nightSky = new Star[60];
Spaceship ship = new Spaceship();

ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> ammo = new ArrayList <Bullet>();

public void setup(){
  size(700, 700);
  for(int i = 0; i < nightSky.length; i++){
   nightSky[i] = new Star();  
  }
  for(int k = 0; k < 15; k++){
    rocks.add(new Asteroid());
  }
} 

public void draw(){
 noStroke();
 if(keyPressed){
    if(key == 'k' || key == 'K'){
      ship.hyperspace(); 
    } //stop ship, new random position 
    
    if(key == 'a' || key == 'A'){
      //ship.setXspeed(5);
      ship.turn(-20);
    } //left
    
    if(key == 'w' || key == 'W'){
      ship.setYspeed(-5);
    } //up
    
    if(key == 's' || key == 'S'){
      ship.setYspeed(5);
    } //down
    
    if(key == 'd' || key == 'D'){
      //ship.setXspeed(-5);
      ship.turn(20);
    } //move right 
    
    if(key == 'j' || key == 'J'){
      ship.accelerate(0.5);

    }//accelerate
    
    if(key == 'l' || key == 'L'){
      ammo.add(new Bullet(ship));
    } //fire bullets
    
 }
 for(int i = 0; i < nightSky.length; i++){
   nightSky[i].show();
 }//stars 
 
 for(int k = 0; k < rocks.size(); k++){
   rocks.get(k).move();
   rocks.get(k).show();
   
   float d = dist((float)ship.getX(), (float)ship.getY(), (float)rocks.get(k).getX(), (float)rocks.get(k).getY()); 
   if(d < 50)
     rocks.remove(k); 
 }//rocks and ship distance 
 
 for(int s = 0; s < ammo.size(); s++){
   ammo.get(s).move();
   ammo.get(s).show();
   
   if(ammo.get(s).getX() > width || ammo.get(s).getX() < 0){
     ammo.remove(s);
     break;
   }
 }//adding new bullets 
 
 for(int s = 0; s < ammo.size(); s++){
   for(int k = 0; k < rocks.size(); k++){
     float dis = dist((float)ammo.get(s).getX(), (float)ammo.get(s).getY(), (float)rocks.get(k).getX(), (float)rocks.get(k).getY()); 
     if(dis < 40){
        rocks.remove(k);
        ammo.remove(s);
        
        break; 
     }
   }
 } //bullet and asteroid distance 
 
 ship.move();
 ship.show();
}
