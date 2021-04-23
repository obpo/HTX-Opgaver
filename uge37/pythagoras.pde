
void pythagoras() {
  
  float a;
  float b;
  float c;
  
  a = 120;
  b = 180;
  c = 0;
  
  c = sqrt(pow(a, 2) + pow(b, 2));
  println(c);
  
  line(20, 20, a+20, 20);
  line(20, 20, 20, b+20);
  line(a+20, 20, 20, b+20);
  
}
