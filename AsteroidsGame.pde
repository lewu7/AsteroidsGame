Star[] nightSky = new Star[70];
Spaceship ship = new Spaceship();

public void setup(){
  size(700, 700);
  for(int i = 0; i < nightSky.length; i++){
   nightSky[i] = new Star();  
  }
} 

public void draw(){
 background(0);
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
 ship.move();
 ship.show();
}

