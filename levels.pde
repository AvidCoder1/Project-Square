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
  //wall(blueLvl*6+playerWidth+10, height/2, 256, 256, brick);
  
  //UI Elements
  if(transButton(width - 100, 0, 100, 100, 100) == true) {
    previousGamestate = 6;
    gamestate = 5;
  }
  
  if(inArea(width/2, height/4, (width/2) + 50, (height/4) + 50)) {
    dialogue("Ahh, I see you have discovered the first", "of the mobius! This will be documented!", "Well, carry on...", "");
  }
  
  if(keyz[7] == true) {
    action(selSlot);
  }
  if(keyz[8] == true) {
    drop(selSlot);
  }
  
  itemPickup(width/2, 0, stick, 200, 200, "stick");
  
  showInventory();
  
  //1600 : 900
}