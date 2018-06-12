void borders() {
  if(levelPosH == 0) {
    levelDirH = "m"; 
  }
  if(levelPosV == 0) {
    levelDirV = "m"; 
  }
  
  int rightB = width - playerWidth;
  int bottomB = height - playerHeight;

  if (x >= rightB) {
    x = width/2;
    y = height/2;
    if(levelDirH == "r") { levelPosH = levelPosH + 1; }
    if(levelDirH == "m") { levelPosH = levelPosH + 1; levelDirH = "r"; }
    if(levelDirH == "l") { levelPosH -= 1; }
    
  }
  if (x <= 0) {
    x = width/2;
    y = height/2;
    if(levelDirH == "l") { levelPosH = levelPosH + 1; }
    if(levelDirH == "m") { levelPosH = levelPosH + 1; levelDirH = "l"; }
    if(levelDirH == "r") { levelPosH -= 1; }
  }
  if (y >= bottomB) {
    x = width/2;
    y = height/2;
    if(levelDirV == "d") { levelPosV = levelPosV + 1; }
    if(levelDirV == "m") { levelPosV = levelPosV + 1; levelDirV = "d"; }
    if(levelDirV == "u") { levelPosV -= 1; }
  }
  if (y <= 0) {
    x = width/2;
    y = height/2;
    if(levelDirV == "u") { levelPosV = levelPosV + 1; }
    if(levelDirV == "m") { levelPosV = levelPosV + 1; levelDirV = "u"; }
    if(levelDirV == "d") { levelPosV -= 1; }
  }
}


void wall(float xF, float yF, float widthWall, float heightWall, PImage texture) {
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

boolean inArea(float x, float y, int pWidth, int pHeight, float x1, float y1, float x2, float y2) {
  if(x+pWidth>=x1 && x<=x2 && y+pHeight>=y1 && y<=y2) {
    return true;
  }
  return false;
}