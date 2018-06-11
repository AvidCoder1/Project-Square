float x = width/2 - 20;
float y = height/2;

boolean crouch;
boolean walk;
boolean run;

boolean inLevel = false;

//inventory
String slot1 = "null";
String slot2 = "null";

int s1c = 150;
int s2c = 150;

boolean s1o = true;
boolean s2o = false;

int selSlot = 1;

int playerWidth = 110;
int playerHeight = 160;

float pX;
float pY;

void showCharacter() {
  //change later
  pushMatrix();
  fill(0);
  tint(255, 255);
  image(character, x, y, 100, 150);
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