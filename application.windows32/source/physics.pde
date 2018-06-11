void borders() {
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