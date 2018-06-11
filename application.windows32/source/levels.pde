void levelOne() {
  arrowAllow = true;
  //prereq
  background(10, 255, 100);
  inLevel = true;
  showCharacter();
  arrowControl();
  
  float mult = width-256/255;
  
  //Objects
  tint(255, 255);
  wall(blueLvl*6+playerWidth+10, height/2, 256, 256, brick);
  wall(width/4, height/4, 128, 128, brick);
  
  //UI Elements
  if(transButton(width - 100, 0, 100, 100, 100) == true) {
    previousGamestate = 6;
    gamestate = 5;
  }
  
  dialouge("Ahh, I see you have discovered the first", "of the mobius! This will be documented!", "Well, carry on...", "");
  
  showInventory();
  
  //1600 : 900
}