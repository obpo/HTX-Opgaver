
void frameFunction(int x, int y ){
  fill(233);
  rect(10+x,10+y, width/2-20, height/2-20);
}

void alien(int xOff, int yOff, String name) {
  
  frameFunction(xOff, yOff);
  
  drawHead(xOff, yOff);
  drawBody(xOff, yOff);
  drawLegs(xOff, yOff);
  writeName(xOff, yOff, name);
  
}

void drawHead(int xOff, int yOff) {
  // make head and color white
  fill(233);
  circle(150 + xOff,75 + yOff,100);
  
  drawEyes(xOff, yOff);
}

void drawEyes(int xOff, int yOff) {
  // make eys and color black
  fill(0);
  ellipse(125 + xOff, 75 + yOff, 25, 50);
  ellipse(175 + xOff, 75 + yOff, 25, 50);
  
}

void drawBody(int xOff, int yOff) {
  // make body and color black
  fill(0);
  rect(125 + xOff,120 + yOff,50,100);
  
}

void drawLegs(int xOff, int yOff) {
  //make legs and thick
  strokeWeight(5);
  line(125 + xOff,220 + yOff,110 + xOff,250 + yOff);
  line(175 + xOff,220 + yOff,195 + xOff,250 + yOff);
  strokeWeight(0);
  
}

void writeName(int xOff, int yOff, String name) {
  //write aliens name
  textSize(32);
  text(name, 120 + xOff, 270 + yOff);
  
}
