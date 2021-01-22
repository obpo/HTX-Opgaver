// initiering af variablen f
Firkant f;

color bg = color(0, 0, 0);
boolean firkant = true;

void setup() {
  size (600, 400);
}

void draw() {
  background(bg);
  
  // initiering af objektet f
  f = new Firkant();
  // tegner firkanten på canvas
  if (firkant)
    f.drawFirkant();
  else
    f.drawCircle();
    
  firkant = !firkant;
}
