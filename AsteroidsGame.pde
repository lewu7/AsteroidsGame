Star[] nightSky = new Star[70];
Spaceship ship = new Spaceship();

ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();

public void setup(){
  size(700, 700);
  for(int i = 0; i < nightSky.length; i++){
   nightSky[i] = new Star();  
  }
  for(int k = 0; k < 20; k++){
    rocks.add(new Asteroid());
  }
} 

public void draw(){
 //background(37,30,41);
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
    
 }
 for(int i = 0; i < nightSky.length; i++){
   nightSky[i].show();
 }
 for(int k = 0; k < rocks.size(); k++){
   rocks.get(k).move();
   rocks.get(k).show();
   
   float d = dist((float)ship.getX(), (float)ship.getY(), (float)rocks.get(k).getX(), (float)rocks.get(k).getY()); 
   if(d < 30)
     rocks.remove(k); 
 }
 
 ship.move();
 ship.show();
}
