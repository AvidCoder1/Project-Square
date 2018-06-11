int gamestate = 0;

//0
void mainMenu() {
  //float x, float y, int textColor, int buttonColor, float buttonWidth, float buttonHeight, String text
  
  //worlds
  if(textButton(80, 50, 0, 255, 300, 100, "Worlds") == true) {
    gamestate = 1;
  }
  
  //characters
  if(textButton(80, 200, 0, 255, 300, 100, "Characters") == true) {
    gamestate = 2;
  }
  
  //settings
  if(textButton(80, 350, 0, 255, 300, 100, "Settings") == true) {
    gamestate = 3;
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
  }
  
  if(textButton(200, 100, 0, 255, 300, 100, "Level 1") == true) {
    gamestate = 6;
  }
  
  inLevel = false;
}

//2
void characterMenu() {
  if(textButton(width - 380, height - 150, 0, 255, 300, 100, "Exit") == true) {
    gamestate = 0;
  }
}

//3
void settingMenu() {
  if(textButton(width - 380, height - 150, 0, 255, 300, 100, "Exit") == true) {
    gamestate = 0;
  }
}

//4
void exitMenu() {

}