class Firkant {
  // klassens attributter/ tilstand
  float x, y;
  float size;
  color c;
  

  //konstroktøren
  Firkant() {
    // find to tilfældige værdier inden for canvas størrelsen

    this.x = random(600);
    this.y = random(400);
    
    this.size = random(200);
    
    this.c = color(round(random(255)), round(random(255)), round(random(255)));
  }

  // klassens metoder
  // tegn firkant på canvas
  void drawFirkant() {
    fill(this.c);
    square(x, y, size);
    fill(bg);
  }
  
  void drawCircle() {
    fill(this.c);
    circle(x, y, size);
    fill(bg);
  }
}
