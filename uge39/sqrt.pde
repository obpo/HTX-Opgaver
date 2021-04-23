
void SQRT() {
  
  noLoop();
  
  floatNum = 2;
  doubleNum = 2;
  
  floatNum = sqrt(floatNum);
  println(floatNum);
  floatNum = pow(floatNum, 2);
  println(floatNum);
  
  // Double kan ikke bruges da sqrt() og pow() ikke godtager double datatypen
  
  /*println();
  doubleNum = sqrt(doubleNum);
  println(doubleNum);
  doubleNum = pow(doubleNum, 2);
  println(doubleNum);*/
  
}
