boolean arrowAllow = true;

int previousGamestate;


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

void dialouge(String text1, String text2, String text3, String text4) {
  tint(255, 255);
  pushMatrix();
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
}