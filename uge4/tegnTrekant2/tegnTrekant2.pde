
float x1;
float y1;
float x2;
float y2;
float x3;
float y3;

int pos = 0;

void setup() {
  fullScreen();
  
}

void draw() {
  
  if (pos >= 3) {
    triangle(x1, y1, x2, y2, x3, y3);
    noLoop();
  
  }

}

void mouseClicked() {
  
  switch (pos) {
    case 0:
      x1 = mouseX;
      y1 = mouseY;
      break;
    
    case 1:
      x2 = mouseX;
      y2 = mouseY;
      break;
      
    case 2:
      x3 = mouseX;
      y3 = mouseY;
      break;
      
    default:
      break;
  }
  
  pos ++;
  
}
