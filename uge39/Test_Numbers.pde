
byte byteNum = 0;
short shortNum = 0;
int intNum = 0;
long longNum = 0;
float floatNum = 0.0f;
double doubleNum = 0.0d;

void TestNumbers() {
  
  noLoop();
  
  println("\nByte");
  byteNum = 127;
  testByte(byteNum);
  byteNum ++;
  testByte(byteNum);
  
  println("\nShort");
  shortNum = 32767;
  testShort(shortNum);
  shortNum ++;
  testShort(shortNum);
  
  println("\nint");
  intNum = 2147483647;
  testInt(intNum);
  intNum ++;
  testInt(intNum);
  
  println("\nLong");
  longNum = 9223372036854775807L;
  testLong(longNum);
  longNum ++;
  testLong(longNum);

}

void testByte(byte x){
  println (x);
}

void testShort(short x){
  println (x);
}

void testInt(int x){
  println (x);
}

void testLong(long x){
  println (x);
}

void TestFloat(int increment) {
  println(floatNum);
  floatNum += increment;
}

void TestDouble(int increment) {
  println(doubleNum);
  doubleNum += increment;
}
