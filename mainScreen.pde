int gamestate = 0;

int char1 = 0;
int char2 = 100;

//0
void mainMenu() {
  //float x, float y, int textColor, int buttonColor, float buttonWidth, float buttonHeight, String text
  
  //worlds
  if(textButton(80, 50, 0, 255, 300, 100, "Worlds") == true) {
    delay(200);
    gamestate = 1;
    previousGamestate = 0;
  }
  
  //characters
  if(textButton(80, 200, 0, 255, 300, 100, "Characters") == true) {
    delay(200);
    gamestate = 2;
    previousGamestate = 0;
  }
  
  //settings
  if(textButton(80, 350, 0, 255, 300, 100, "Settings") == true) {
    delay(200);
    gamestate = 3;
    previousGamestate = 0;
  }
  
  //exit
  if(textButton(80, 500, 0, 255, 300, 100, "Exit") == true) {
    exit();
  }
}

//1
void worldMenu() {
  if(textButton(width - 380, height - 150, 0, 255, 300, 100, "Exit") == true) {
    gamestate = 0;
    previousGamestate = 1;
  }
  
  if(textButton(200, 100, 0, 255, 300, 100, "Level 1") == true) {
    gamestate = 6;
    previousGamestate = 1;
  }
  
  inLevel = false;
}

//2
void characterMenu() {
  if(textButton(width - 380, height - 150, 0, 255, 300, 100, "Exit") == true) {
    gamestate = 0;
    previousGamestate = 2;
  }
  if(textButton(50, 50, 255, char1, 100, 100, "Dev") == true) {
    selCharacter = 0;
    char1 = 0;
    char2 = 100;
  }
  if(textButton(200, 50, 255, char2, 100, 100, "Mario") == true) {
    selCharacter = 1;
    char1 = 100;
    char2 = 0;
  }
}

//3
void settingMenu() {
  if(textButton(width - 380, height - 150, 0, 255, 300, 100, "Exit") == true) {
    gamestate = 0;
    previousGamestate = 3;
  }
}

//4
void exitMenu() {

}

void levelOverlays() {
  borders();
  if(inLevel) {
    tint(255, 255);
    arrowAllow = true;
    background(10, 255, 100);
    showCharacter();
    arrowControl(); 
  }
  image(menu, width-100, 0, 100, 100);
  if(transButton(width-100, 0, 100, 100, 100) == true) {
    previousGamestate = 6;
    gamestate = 5;
  }
  if(keyz[7] == true) {
    action(selSlot);
  }
  if(keyz[8] == true) {
    drop(selSlot);
  }
  showInventory();
  if(transButton(width - 100, 0, 100, 100, 100) == true) {
    previousGamestate = 6;
    gamestate = 5;
  }
}