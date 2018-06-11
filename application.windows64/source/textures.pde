PImage up;
PImage left;
PImage down;
PImage right;
PImage plus;
PImage minus;
PImage character;
PImage brick;
PImage dialouge;

void loadTextures() {  
  up = loadImage("UpArrow.png");
  left = loadImage("LeftArrow.png");
  down = loadImage("DownArrow.png");
  right = loadImage("RightArrow.png");
  plus = loadImage("Plus.png");
  minus = loadImage("Minus.png");
  character = loadImage("Mario.png");
  brick = loadImage("Brick.png");
  dialouge = loadImage("Dialouge.png");
  dialouge.resize(width, height/4);
}