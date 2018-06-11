import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class ProjectSquarePC extends PApplet {

int blueLvl = 0;
int blueDir = 1;

public void setup() {
  
  orientation(LANDSCAPE);
  
  loadTextures();
}

public void draw() {
  strokeWeight(1);
  //6+ are levels in gamestate
  
  if(gamestate<=5) {
  background(255, 0,  blueLvl);
  }
  
  if(blueLvl>=150) {
    blueDir = -1; 
  }
  if(blueLvl<=0) {
    blueDir = 1;
  }
  blueLvl+=blueDir;
  
  borders();
  
  if(inLevel) {
    showCharacter();
    arrowControl(); 
  }
  
  borders();
  
  switch(gamestate) {
   case 0 :
   mainMenu();
   break;
   
   case 1 :
   inLevel = false;
   worldMenu();
   break;
   
   case 2 :
   characterMenu();
   break;
   
   case 3 :
   settingMenu();
   break;
   
   case 4 :
   exitMenu();
   break;
   
   case 5 :
   pauseMenu();
   break;
   
   case 6 :
   levelOne();
   break;
   
   default :
   //else
   break;
  }
}

public boolean textButton(float x, float y, int textColor, int buttonColor, float buttonWidth, float buttonHeight, String text) {
  pushMatrix();
  fill(buttonColor);
  rect(x, y, buttonWidth, buttonHeight);
  popMatrix();
  
  pushMatrix();
  textSize(32);
  fill(textColor);
  text(text, x+(buttonWidth/2) - (textWidth(text)/2), y + (buttonHeight/2));
  popMatrix();
  
  if(mousePressed) {
    /*
    text("ReqPosX: " + x + " ReqPosY: " + y, width/4, height/4 - 100);
    text("ReqPosX: " + (x+buttonWidth) + " ReqPosY: " + (y+buttonWidth), width/4, height/4); 
    text("mousePressed! mouseX: " + mouseX + " mouseY: " + mouseY, width/2, height/2);
    */
    if(mouseX >= x & mouseX <= (x+buttonWidth) & mouseY >= y & mouseY <= (y+buttonHeight)) {
      return true;
    }
  }
    
  return false;
}

public void textBox(float x, float y, String text, int textColor) {
  pushMatrix();
  textSize(36);
  fill(textColor);
  text(text, x, y);
  popMatrix();
}

public boolean button(float x, float y, float buttonWidth, float buttonHeight, int buttonColor) {
  pushMatrix();
  fill(buttonColor);
  rect(x, y, buttonWidth, buttonHeight);
  popMatrix();
  
  if(mousePressed) {
    if(mouseX >= x & mouseX <= (x+buttonWidth) & mouseY >= y & mouseY <= (y+buttonHeight)) {
      return true;
    }
  }
  
  //mouseX = -100;
  //mouseY = -100;
  return false;
}

public boolean transButton(float x, float y, float buttonWidth, float buttonHeight, int transparency) {
  pushMatrix();
  fill(0, transparency);
  rect(x, y, buttonWidth, buttonHeight);
  popMatrix();
  
  if(mousePressed) {
    if(mouseX >= x & mouseX <= (x+buttonWidth) & mouseY >= y & mouseY <= (y+buttonHeight)) {
      return true;
    }
  }
  
  //mouseX = -100;
  //mouseY = -100;
  return false;
}

public boolean upArrow(float x, float y, float widthBox, float heightBox, int opacity) {
  pushMatrix();
  tint(255, opacity);
  fill(150);
  rect(x, y, widthBox, heightBox);
  image(up, x, y, widthBox, heightBox);
  popMatrix();

  if(mousePressed) {
    if(mouseX >= x & mouseX <= (x+widthBox) & mouseY >= y & mouseY <= (y+heightBox)) {
      return true;
    }
  }
  
  return false;
}

public boolean downArrow(float x, float y, float widthBox, float heightBox, int opacity) {
  pushMatrix();
  tint(255, opacity);
  rect(x, y, widthBox, heightBox);
  fill(150);
  image(down, x, y, widthBox, heightBox);
  popMatrix();
  
  if(mousePressed) {
    if(mouseX >= x & mouseX <= (x+widthBox) & mouseY >= y & mouseY <= (y+heightBox)) {
      return true;
    }
  }
  
  return false;
}

public boolean leftArrow(float x, float y, float widthBox, float heightBox, int opacity) {
  pushMatrix();
  tint(255, opacity);
  fill(150);
  rect(x, y, widthBox, heightBox);
  image(left, x, y, widthBox, heightBox);
  popMatrix();
  
  if(mousePressed) {
    if(mouseX >= x & mouseX <= (x+widthBox) & mouseY >= y & mouseY <= (y+heightBox)) {
      return true;
    }
  }
  
  return false;
}

public boolean rightArrow(float x, float y, float widthBox, float heightBox, int opacity) {
  pushMatrix();
  tint(255, opacity);
  fill(150);
  rect(x, y, widthBox, heightBox);
  image(right, x, y, widthBox, heightBox);
  popMatrix();
  
  if(mousePressed) {
    if(mouseX >= x & mouseX <= (x+widthBox) & mouseY >= y & mouseY <= (y+heightBox)) {
      return true;
    }
  }
  
  return false;
}

public int valueButton(float x, float y, float widthBox, float heightBox, int value) {
  String stringValue = Integer.toString(value);
  
  pushMatrix();
  fill(150);
  rect(x, y, widthBox, heightBox);
  image(minus, x, y, widthBox, heightBox);
  popMatrix();
  
  pushMatrix();
  fill(150);
  rect(x + (widthBox*2) + 50, y, widthBox, heightBox);
  image(plus, x + (widthBox*2) + 50, y, widthBox, heightBox);
  popMatrix();
  
  pushMatrix();
  textSize(56);
  text(value, x - 25, y + (heightBox/2));
  rect(x + widthBox + 25, y, widthBox, heightBox);
  popMatrix();
  
  if(mousePressed) {
    if(mouseX >= x + (widthBox*2) + 50 & mouseX <= (x+widthBox) + (widthBox*2) & mouseY >= y & mouseY <= (y+heightBox)) {
      return 1;
    }
    if(mouseX >= x & mouseX <= (x+widthBox) & mouseY >= y & mouseY <= (y+heightBox)) {
      return -1;
    }
  }
  
  return 0;
}
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

public void showCharacter() {
  //change later
  pushMatrix();
  fill(0);
  tint(255, 255);
  image(character, x, y, 100, 150);
  popMatrix();
}

public String addInventory(int slot, String item) {
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

public void showInventory() {
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
float steps = 5;
float jumpHeight;

boolean[] keyz = new boolean[6];

public void keyPressed() {
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

public void keyReleased() {
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
public void levelOne() {
  arrowAllow = true;
  //prereq
  background(10, 255, 100);
  inLevel = true;
  showCharacter();
  arrowControl();
  
  float mult = width-256/255;
  
  //Objects
  tint(255, 255);
  wall(blueLvl*6+playerWidth+10, height/2, 256, 256, brick);
  wall(width/4, height/4, 128, 128, brick);
  
  //UI Elements
  if(transButton(width - 100, 0, 100, 100, 100) == true) {
    previousGamestate = 6;
    gamestate = 5;
  }
  
  dialouge("Ahh, I see you have discovered the first", "of the mobius! This will be documented!", "Well, carry on...", "");
  
  showInventory();
  
  //1600 : 900
}
int gamestate = 0;

//0
public void mainMenu() {
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
public void worldMenu() {
  if(textButton(width - 380, height - 150, 0, 255, 300, 100, "Exit") == true) {
    gamestate = 0;
  }
  
  if(textButton(200, 100, 0, 255, 300, 100, "Level 1") == true) {
    gamestate = 6;
  }
  
  inLevel = false;
}

//2
public void characterMenu() {
  if(textButton(width - 380, height - 150, 0, 255, 300, 100, "Exit") == true) {
    gamestate = 0;
  }
}

//3
public void settingMenu() {
  if(textButton(width - 380, height - 150, 0, 255, 300, 100, "Exit") == true) {
    gamestate = 0;
  }
}

//4
public void exitMenu() {

}
public void pauseMenu() {
  arrowAllow = false;
  
  pushMatrix();
  fill(128, 128, 128, 200);
  rect(width/4, height/4, width/2, height/2);
  popMatrix();
  
  if(textButton(width-125, height - 75, 0, 255, 125, 75, "Return")) {
    gamestate = previousGamestate; 
    
  }
  
  if(textButton(0, 0, 0, 255, 125, 75, "Exit")) {
   gamestate = 1; 
  }
}
public void borders() {
  int rightB = width - playerWidth;
  int bottomB = height - playerHeight;

  if (x >= rightB) {
    x = rightB - 1;
  }
  if (x <= 0) {
    x = 1;
  }
  if (y >= bottomB) {
    y = bottomB - 1;
  }
  if (y <= 0) {
    y = 1;
  }
}


public void wall(float xF, float yF, float widthWall, float heightWall, PImage texture) {
  if (x+playerWidth>=xF && x<=xF+widthWall+64) {
    if (y+playerHeight>=yF-10 && y<yF+heightWall+10) {
      //conditions
      if (x>=xF+widthWall) {
        x=xF+widthWall+70;
      }
      else if(x<=xF) {
        x=xF-playerWidth-10;
      }
      else if(y+playerHeight>=yF-10 && y+playerHeight<=yF+heightWall) {
        y=yF-playerHeight-10;
      }
      else {
        y=yF+heightWall+10; 
      }
    }
  }

  if (texture.width == 64 && texture.height == 64 && widthWall % 64 == 0 && heightWall % 64 == 0 && heightWall == widthWall) {
    if (widthWall == 64) {
      image(texture, xF, yF, 64, 64);
    }
    if (widthWall == 128) {
      for (int i = 0; i <= 128; i+=64) {
        image(texture, xF+i, yF, 64, 64);
        image(texture, xF+i, yF+64, 64, 64);
      }
    }
    if (widthWall == 256) {
      for (int i = 0; i <= 256; i+=64) {
        image(texture, xF+i, yF, 64, 64);
        image(texture, xF+i, yF+64, 64, 64);
        image(texture, xF+i, yF+128, 64, 64);
        image(texture, xF+i, yF+192, 64, 64);
      }
    }
  } else {
    image(texture, xF, yF, widthWall, heightWall);
  }
}
boolean arrowAllow = true;

int previousGamestate;


public void arrowControl() {
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

public void dialouge(String text1, String text2, String text3, String text4) {
  tint(255, 255);
  pushMatrix();
  strokeWeight(5);
  stroke(0);
  rect(0, height * 0.75f, width, height/4);
  popMatrix();
  
  pushMatrix();
  fill(0);
  textSize(36);
  text(text1, 50, (height * 0.75f) + 50);
  text(text2, 50, (height * 0.75f) + 100);
  text(text3, 50, (height * 0.75f) + 150);
  text(text4, 50, (height * 0.75f) + 200);
  popMatrix();
  
  strokeWeight(1);
}












PImage up;
PImage left;
PImage down;
PImage right;
PImage plus;
PImage minus;
PImage character;
PImage brick;
PImage dialouge;

public void loadTextures() {  
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
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ProjectSquarePC" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
