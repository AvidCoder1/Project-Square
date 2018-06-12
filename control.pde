float steps = 5;
float jumpHeight;

boolean done = true;

boolean[] keyz = new boolean[11];

void keyPressed() {
  if(key == 'w') {
    keyz[0] = true;
  }
  if(key == 'a') {
    keyz[1] = true;
  }
  if(key == 's') {
    keyz[2] = true;
  }
  if(key == 'd') {
    keyz[3] = true;
  }
  if(key == '1') {
    keyz[4] = true;
    keyz[5] = false;
    selSlot = 1;
  }
  if(key == '2') {
    keyz[5] = true;
    keyz[4] = false;
    selSlot = 2;
  }
  if(key == ENTER) {
    keyz[6] = true;
  }
  if(key == 'q') {
    keyz[7] = true; 
  }
  if(key == 'e') {
    keyz[8] = true; 
  }
  if(key == 'p') {
    keyz[9] = true; 
  }
  if(key == ESC) {
    if(gamestate == 5) {
      gamestate = previousGamestate;
      previousGamestate = 5;
    }
    else if(inLevel) {
      previousGamestate = gamestate;
      gamestate = 5;
    }
    else if(gamestate == 0) {
      exit(); 
    }
    else if(gamestate == 1) {
      gamestate = 0;
      previousGamestate = 1;
    }
    else {
      gamestate = previousGamestate; 
    }
    
    key = 0;
  }
}

void keyReleased() {
  if(key == 'w') {
    keyz[0] = false;
  }
  if(key == 'a') {
    keyz[1] = false;
  }
  if(key == 's') {
    keyz[2] = false;
  }
  if(key == 'd') {
    keyz[3] = false;
  }
  if(key == '1') {
    keyz[4] = false;
  }
  if(key == '2') {
    keyz[5] = false;
  }
  if(key == ENTER) {
     keyz[6] = false;
  }
  if(key == 'q') {
    keyz[7] = false; 
  }
  if(key == 'e') {
    keyz[8] = false; 
  }
  if(key == 'p') {
    keyz[9] = false; 
  }
}

boolean waitUntil(double miliTime) {
  double startTime = 0;
  
  if(done == true) {
    startTime = (double)System.nanoTime() / 1000000000;
    println(startTime);
  }
  done = false;
  
    if(startTime + (miliTime/1000) == System.nanoTime() / 1000000000 && done == false) {
      done = true; 
      return true;
    }
    
    return false;
}