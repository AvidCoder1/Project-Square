void levelOne() {
  //prereq
  inLevel = true;
  levelOverlays();
  
  //Level Code: Horizontal#:Vertical# (m = Middle) (u = Up) (d = Down) (r = Right) (l = Left) Followed by # of Times Moved in that Direction
  
  //m:m
  if(levelPosition("m", 0, "m", 0)) {
    if(inArea(x, y, playerWidth, playerHeight, width/2, height/4, (width/2) + 50, (height/4) + 50)) {
      dialogue("Ahh, I see you have discovered the first", "of the mobius! This will be documented!", "Well, carry on...", "");
    }
    itemPickup(width/2, 0, stick, 200, 200, "stick");
  }
  //m:u1
  if(levelPosition("m", 0, "u", 1)) {
     itemPickup(width/2, height/4, brick, 64, 64, "brick");
  }
  
  text("Horizontal: " + levelPosH + " Horizontal Dir: " + levelDirH + " Vertical: " + levelPosV + " Vertical Dir: " + levelDirV, 0, height-40);
}