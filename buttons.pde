<<<<<<< HEAD
boolean textButton(float x, float y, int textColor, int buttonColor, float buttonWidth, float buttonHeight, String text) {
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

void textBox(float x, float y, String text, int textColor) {
  pushMatrix();
  textSize(36);
  fill(textColor);
  text(text, x, y);
  popMatrix();
}

boolean button(float x, float y, float buttonWidth, float buttonHeight, int buttonColor) {
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

boolean transButton(float x, float y, float buttonWidth, float buttonHeight, int transparency) {
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

boolean upArrow(float x, float y, float widthBox, float heightBox, int opacity) {
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

boolean downArrow(float x, float y, float widthBox, float heightBox, int opacity) {
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

boolean leftArrow(float x, float y, float widthBox, float heightBox, int opacity) {
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

boolean rightArrow(float x, float y, float widthBox, float heightBox, int opacity) {
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

int valueButton(float x, float y, float widthBox, float heightBox, int value) {
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
=======
boolean textButton(float x, float y, int textColor, int buttonColor, float buttonWidth, float buttonHeight, String text) {
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

void textBox(float x, float y, String text, int textColor) {
  pushMatrix();
  textSize(36);
  fill(textColor);
  text(text, x, y);
  popMatrix();
}

boolean button(float x, float y, float buttonWidth, float buttonHeight, int buttonColor) {
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

boolean transButton(float x, float y, float buttonWidth, float buttonHeight, int transparency) {
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

boolean upArrow(float x, float y, float widthBox, float heightBox, int opacity) {
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

boolean downArrow(float x, float y, float widthBox, float heightBox, int opacity) {
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

boolean leftArrow(float x, float y, float widthBox, float heightBox, int opacity) {
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

boolean rightArrow(float x, float y, float widthBox, float heightBox, int opacity) {
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

int valueButton(float x, float y, float widthBox, float heightBox, int value) {
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
>>>>>>> d458957b84edabf4c39f22d0e09408781f742ffe
}