
int index = 0;

void setup() {
  size(512, 512);  

}

void draw() {
  
}

void mouseClicked() {
  
  if (index < 10) {
    String newData = str(mouseX) + " " + str(mouseY);
    index ++;
    
    writeToFile("list.txt", newData, true);

  }
  
}

void writeToFile(String fileName, String data, boolean append) {
  
  

  if (append == true) {
    
    String[] lines = loadStrings("list.txt");
    
    int l = lines.length;
    String[] sData = split(data, " ");
    
    String[] list = new String[l + sData.length];
      
    // Save original data to list
    for (int i = 0; i < l; i++) {
      list[i] = lines[i]; 
    }
      
    // Add New data to the end
    for (int i = 0; i < sData.length-1; i++) {
      list[l+i] = sData[i];
      
    }
      
    saveStrings(fileName, list);
  
  // Replace data with new data
  } else {
    String[] list = split(data, " ");
    saveStrings(fileName, list);
    
  }

}
