void pauseMenu() {
  arrowAllow = false;
  inLevel = false;
  
  pushMatrix();
  fill(128, 128, 128, 200);
  rect(0, 0, width, height);
  popMatrix();
  
  if(textButton(width-125, 0, 0, 255, 125, 75, "Return")) {
    gamestate = previousGamestate; 
    
  }
  
  if(textButton(0, 0, 0, 255, 125, 75, "Exit")) {
   gamestate = 1; 
  }
}