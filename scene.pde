boolean arrowAllow = true;

int previousGamestate;

boolean onG = true;

int levelPosH;
String levelDirH;
int levelPosV;
String levelDirV;

void arrowControl() {
  if(keyPressed && arrowAllow) {
    if(keyz[0] == true) {
      pX = x;
      pY = y;
      
      y -= steps;
    }
    if(keyz[1] == true) {
      pX = x;
      pY = y;
      
      x -= steps;
    }
    if(keyz[2] == true) {
      pX = x;
      pY = y;
      
      y += steps;
    }
    if(keyz[3] == true) {
      pX = x;
      pY = y;
      
      x += steps;
    }
  }
}

void dialogue(String text1, String text2, String text3, String text4) {
  tint(255, 255);
  
  pushMatrix();
  fill(0, 100);
  strokeWeight(5);
  stroke(0);
  rect(0, height * 0.75, width, height/4);
  popMatrix();
  
  pushMatrix();
  fill(0);
  textSize(36);
  text(text1, 50, (height * 0.75) + 50);
  text(text2, 50, (height * 0.75) + 100);
  text(text3, 50, (height * 0.75) + 150);
  text(text4, 50, (height * 0.75) + 200);
  popMatrix();
  
  strokeWeight(1);
  stroke(1);
}

boolean itemPickup(float xI, float yI, PImage itemG, float widthI, float heightI, String name) {
  image(itemG, xI, yI, widthI, heightI);
    
  if(inArea(x, y, playerWidth, playerHeight, xI, yI, xI+widthI, yI+heightI)) {
    if(selSlot == 1) {
      slot1 = name;
      if(slot2 == name) {
        slot2 = " "; 
      }
    }
    if(selSlot == 2) {
      slot2 = name;
      if(slot1 == name) {
        slot1 = " ";
      }
    }
  return true;
  }
    
  return false;
}

boolean levelPosition(String h, int hi, String v, int vi) {
  if(levelDirH == h && levelDirV == v && levelPosH == hi && levelPosV == vi) {
    return true;
  }
  return false;
}