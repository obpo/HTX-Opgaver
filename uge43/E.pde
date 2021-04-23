
void countChars(char chr) {
  
  int chrs = 0;

  for (int i = 0; i < es.length(); i++) {
    if(es.charAt(i)==chr) {
      printCharToConsole(chr);
      chrs++;
    }
  }
  
  print("\nAntal e'er: ");  //<>//
  printResultToConsole(chrs); 
  
}
