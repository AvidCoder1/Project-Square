PImage up;
PImage left;
PImage down;
PImage right;
PImage plus;
PImage minus;
PImage character;
PImage brick;
PImage dialouge;
PImage stick;
PImage dankMeme;
PImage menu;

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
  stick = loadImage("Stick.png");
  dankMeme = loadImage("dankMeme.jpg");
  menu = loadImage("Menu.png");
  
  //Characters
    //Dev
    idleDevA = new PImage[]{loadImage("IdleDev1.png"), loadImage("IdleDev2.png")};
    runRDevA = new PImage[]{loadImage("RunRDev1.png"), loadImage("RunRDev2.png")};
    runLDevA = new PImage[]{loadImage("RunLDev1.png"), loadImage("RunLDev2.png")};
    runUDevA = new PImage[]{loadImage("RunUDev1.png"), loadImage("RunUDev2.png")};
    devDabA = new PImage[]{loadImage("IdleDev1.png"), loadImage("DevDab1.png"), loadImage("DevDab2.png"), loadImage("DevDab1.png"), loadImage("IdleDev2.png")};
}

class Animation {
  //variables
  private int current = 0;
  private int frame = 0;
  
  Animation(String name) {
    println("Created Animation For: " + name); 
  }
  
  void display(float xF, float yF, int rate, PImage frames[], int indexFrames, float widthF, float heightF) {
    //indexFrames should be the index number in the passed array
    //must pass PImage array to use frames
    //rate is in frame rate
    
    
    //draw current frame
    image(frames[frame], xF, yF, widthF, heightF);
      
    if(current == rate) {
      frame = frame + 1;
      current = 0;
    }
    
    if(frame > indexFrames-1) {
      //overflow limiter
      frame = 0;
    }
    
    //steps to rate
    current = current + 1;
    
    if(current > rate) {
      //rate overflow limiter
      current = 0; 
    }
    //println("Frame: " + frame + " Current: " + current);
  }
}


        
        
        
        
        
        
        
        
        
        
        
        
        