
import controlP5.*;


ControlP5 cp5;


// Initierer Tekstfelter of knappen
Textfield x1;
Textfield y1;
Textfield x2;
Textfield y2;
Textfield x3;
Textfield y3;

Button drawButton;

float xPos1;
float yPos1;
float xPos2;
float yPos2;
float xPos3;
float yPos3;


void setup() {
  fullScreen();
  
  PFont font = createFont("ariel", 24);
  
  cp5 = new ControlP5(this);
  
  
  x1 = cp5.addTextfield("x1");
  y1 = cp5.addTextfield("y1");
  x2 = cp5.addTextfield("x2");
  y2 = cp5.addTextfield("y2");
  x3 = cp5.addTextfield("x3");
  y3 = cp5.addTextfield("y3");
  
  x1.setPosition(10,10)
    .setSize(150, 50)
    .setFont(font)
    .setColor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;
    
  y1.setPosition(165,10)
    .setSize(150, 50)
    .setFont(font)
    .setColor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;
    
  x2.setPosition(10,65)
    .setSize(150, 50)
    .setFont(font)
    .setColor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;
    
  y2.setPosition(165,65)
    .setSize(150, 50)
    .setFont(font)
    .setColor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;
    
  x3.setPosition(10,120)
    .setSize(150, 50)
    .setFont(font)
    .setColor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;
    
  y3.setPosition(165,120)
    .setSize(150, 50)
    .setFont(font)
    .setColor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;
    
      
  drawButton= cp5.addButton("drawTriangle");
  
  drawButton.setPosition(10, height-60)
    .setSize(280, 50)
    .setLabel("Tegn Trekanten")
    .setFont(font)
    ;

}

void draw() {
  background(0, 151, 165);
  
  if (Float.isNaN(xPos1) || Float.isNaN(yPos1) || Float.isNaN(xPos2) || Float.isNaN(yPos2) || Float.isNaN(xPos3) || Float.isNaN(yPos3)) {
    text("Et eller flere tal er ikke srevet rigtigt.", 10, height -70);
  } else {
    triangle(xPos1, yPos1, xPos2, yPos2, xPos3, yPos3);
  }
  
}

void drawTriangle() {
  
  String input;
  
  input = cp5.get(Textfield.class, "x1").getText();
  xPos1 = float(input);
  
  input = cp5.get(Textfield.class, "y1").getText();
  yPos1 = float(input);
  
  input = cp5.get(Textfield.class, "x2").getText();
  xPos2 = float(input);
  
  input = cp5.get(Textfield.class, "y2").getText();
  yPos2 = float(input);
  
  input = cp5.get(Textfield.class, "x3").getText();
  xPos3 = float(input);
  
  input = cp5.get(Textfield.class, "y3").getText();
  yPos3 = float(input);

}
