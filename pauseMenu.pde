<<<<<<< HEAD
void pauseMenu() {
  arrowAllow = false;
  
  pushMatrix();
  fill(128, 128, 128, 200);
  rect(width/4, height/4, width/2, height/2);
  popMatrix();
  
  if(textButton(width-125, height - 75, 0, 255, 125, 75, "Return")) {
    gamestate = previousGamestate; 
    
  }
  
  if(textButton(0, 0, 0, 255, 125, 75, "Exit")) {
   gamestate = 1; 
  }
=======
void pauseMenu() {
  arrowAllow = false;
  
  pushMatrix();
  fill(128, 128, 128, 200);
  rect(width/4, height/4, width/2, height/2);
  popMatrix();
  
  if(textButton(width-125, height - 75, 0, 255, 125, 75, "Return")) {
    gamestate = previousGamestate; 
    
  }
  
  if(textButton(0, 0, 0, 255, 125, 75, "Exit")) {
   gamestate = 1; 
  }
>>>>>>> d458957b84edabf4c39f22d0e09408781f742ffe
}