void action(int slot) {
  String item = "null";
  
  if(slot == 1) {
    item = slot1;
  }
  if(slot == 2) { 
    item = slot2;
  }
  
  //this is going to be a REALLY LONG LIST
  switch(item) {
    case "null" :
    dialogue("This is not supposed to happen...", "", "", "");
    break;
    
    case "stick" :
    dialogue("A suspicious stick...", "", "", "");
    break;
    
    case "computer" :
    image(dankMeme, 50, 50, width-100, height - 100);
    break;
  }
}

void drop(int slot) {
  if(slot == 1) {
    slot1 = " "; 
  }
  if(slot == 2) {
    slot2 = " ";
  }
}