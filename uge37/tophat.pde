

void tophat() {
  //size(400, 600);
  
  circle(200, 310, 350); // Head
  
  rect(125, 250, 50, 50); // Eyes
  rect(225, 250, 50, 50);
  
  circle(200, 315, 100); // Nose
  
  arc(200, 400, 150, 150, 0, PI, CHORD); // Mouth
  
  fill(0); // Hat
  strokeWeight(10);
  line(50, 150, 350, 150);
  rect(125, 25, 150, 125);
}
