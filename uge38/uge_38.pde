

void setup() {
  size(800, 600);
  
}

void draw() {
  background(66);
  
  alien(0,0, "00");
  alien(width/2,0, "01");
  alien(0,height/2, "10");
  alien(width/2,height/2, "11");
  
  kasseApperat(100, 1.25, "Jens");
  
}
