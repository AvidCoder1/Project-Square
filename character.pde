float x = width/2 - 20;
float y = height/2;

boolean crouch;
boolean walk;
boolean run;

boolean inLevel = false;

//inventory
String slot1 = " ";
String slot2 = " ";

int s1c = 150;
int s2c = 150;

boolean s1o = false;
boolean s2o = false;

int selSlot = 1;

int playerWidth = 110;
int playerHeight = 160;

float pX;
float pY;

int selCharacter = 0;

//Animations for Characters
  //Dev
  Animation idleDev = new Animation("idleDev");
  Animation runRDev = new Animation("runRDev");
  Animation runLDev = new Animation("runLDev");
  Animation runUDev = new Animation("runUDev");
  Animation devDab = new Animation("devDab");

void showCharacter() {
  //loadTextures();
  
  //change later
  pushMatrix();
  fill(0);
  tint(255, 255);
  if(!keyz[0] && !keyz[1] && !keyz[2] && !keyz[3] && !keyz[9]) {
    switch(selCharacter) {
      case 0 :
      idleDev.display(x, y, 20, idleDevA, 2, (float)playerWidth, (float)playerHeight);
      break;
      case 1 :
      image(character, x, y, playerWidth, playerHeight);
      break;
    }
  }
  else if(!keyz[0] && !keyz[1] && !keyz[2] && keyz[3] && !keyz[9]) {
    switch(selCharacter) {
      case 0 :
      runRDev.display(x, y, 10, runRDevA, 2, (float)playerWidth, (float)playerHeight);
      break;
      case 1 :
      image(character, x, y, playerWidth, playerHeight);
      break;
    }
  }
  else if(keyz[0] && keyz[3] && !keyz[1] && !keyz[9] || keyz[2] && keyz[3] && !keyz[1] && !keyz[9]) {
    switch(selCharacter) {
      case 0 :
      runRDev.display(x, y, 10, runRDevA, 2, (float)playerWidth, (float)playerHeight); 
      break;
      case 1 :
      image(character, x, y, playerWidth, playerHeight);
      break;
    }
  }
  else if(keyz[1] && !keyz[0] && !keyz[2] && !keyz[3] && !keyz[9]) {
    switch(selCharacter) {
      case 0 :
      runLDev.display(x, y, 10, runLDevA, 2, (float)playerWidth, (float)playerHeight);
      break; 
      case 1 :
      image(character, x, y, playerWidth, playerHeight);
      break;
    }
  }
  else if(keyz[0] && keyz[1] && !keyz[3] && !keyz[9] || keyz[2] && keyz[1] && !keyz[3] && !keyz[9]) {
    switch(selCharacter) {
      case 0 :
      runLDev.display(x, y, 10, runLDevA, 2, (float)playerWidth, (float)playerHeight); 
      break;
      case 1 :
      image(character, x, y, playerWidth, playerHeight);
      break;
    }
  }
  else if(!keyz[1] && !keyz[3] && !keyz[2] && keyz[0] && !keyz[9] || !keyz[1] && !keyz[0] && !keyz[0] && keyz[2] && !keyz[9]) {
    switch(selCharacter) {
      case 0 :
      runUDev.display(x, y, 10, runUDevA, 2, (float)playerWidth, (float)playerHeight);
      break;
      case 1 :
      image(character, x, y, playerWidth, playerHeight);
      break;
    }
  }
  else if(!keyz[0] && !keyz[1] && !keyz[2] && !keyz[3] && keyz[9]) {
    switch(selCharacter) {
      case 0 :
      devDab.display(x, y, 20, devDabA, 5, (float)playerWidth, (float)playerHeight);
      break;
      case 1 :
      image(character, x, y, playerWidth, playerHeight);
      break;
    }
  }
  else {
    switch(selCharacter) {
      case 0 :
      idleDev.display(x, y, 20, idleDevA, 2, (float)playerWidth, (float)playerHeight);
      break;
      case 1 :
      image(character, x, y, playerWidth, playerHeight);
      break;
    }
  }
  popMatrix();
}

String addInventory(int slot, String item) {
  String slotDrop = "null";
  
  switch(slot) {
    case 1 :
    slotDrop = slot1;
    slot1 = item;
    break;
    case 2 :
    slotDrop = slot2;
    slot2 = item;
    break;
  
   }
  return slotDrop;
}

void showInventory() {
 //add if statements to show certain images to corresponding strings
 
 if(textButton(10, 10, 255, s1c, 100, 100, slot1) == true) {
   selSlot = 1;
 }
 if(selSlot == 1) {
   s1c = 0;
   s2c = 150;
 }
 if(textButton(120, 10, 255, s2c, 100, 100, slot2) == true) {
   selSlot = 2;
 }
 if(selSlot == 2) {
   s2c = 0;
   s1c = 150;
 }
}

void resetLevel() {
  x = 0;
  y = 0;
  
  selSlot = 1;
  slot1 = " ";
  slot2 = " "; 
}