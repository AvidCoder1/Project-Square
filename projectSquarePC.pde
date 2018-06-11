import java.util.Timer;
import java.util.TimerTask;

int blueLvl = 0;
int blueDir = 1;

PImage idleDevA[];
PImage runRDevA[];
PImage runLDevA[];
PImage runUDevA[];
PImage runDDevA[];
PImage devDabA[];

void setup() {
  fullScreen();
  
  frameRate(30);
  
  //set framerate to animation
  loadTextures();
}

void draw() {
  
  strokeWeight(1);
  //6+ are levels in gamestate
  
  if(gamestate<=5) {
  background(255, 0,  blueLvl);
  }
  
  if(blueLvl>=150) {
    blueDir = -1; 
  }
  if(blueLvl<=0) {
    blueDir = 1;
  }
  blueLvl+=blueDir;
  
  borders();
  
  if(inLevel) {
    showCharacter();
    arrowControl(); 
  }
  
  borders();
  
  switch(gamestate) {
   case 0 :
   mainMenu();
   break;
   
   case 1 :
   inLevel = false;
   resetLevel();
   worldMenu();
   break;
   
   case 2 :
   characterMenu();
   break;
   
   case 3 :
   settingMenu();
   break;
   
   case 4 :
   exitMenu();
   break;
   
   case 5 :
   pauseMenu();
   break;
   
   case 6 :
   levelOne();
   break;
   
   default :
   //else
   break;
  }
}