float steps = 5;
float jumpHeight;

boolean[] keyz = new boolean[6];

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
}