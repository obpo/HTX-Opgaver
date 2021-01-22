//lav et rum //<>// //<>// //<>//

int rooms = 9;
Room[] House = new Room[rooms];




void setup() {
  size(800, 800);
  background(205);
  
  House[0] = new Room("Room", false, 100, 300);
  House[1] = new Room("Kitchen", false, 200, 300);
  House[2] = new Room("Livingroom", false, 300, 300);
  House[3] = new Room("Toilet", false, 100, 400);
  House[4] = new Room("Bedroom", false, 200, 400);
  House[5] = new Room("Bathroom", false, 300, 400);
  House[6] = new Room("Basement", false, 100, 500);
  House[7] = new Room("Basement", false, 200, 500);
  House[8] = new Room("Dungeon", false, 300, 500);
    
}

void draw() {
  
  // tegn tag
  House[0].drawRoof();
  
  // tegn rum
  for (int i = 0; i < rooms; i++) {
    House[i].drawRoom();
  }
}

void mouseClicked() {
  // lav baggrund
  background(205);
  fill(105);
  rect(80, 680, 300, 30);
  fill(250);

  // find ud af om vi tænder eller slukker lyset
  for (int i = 0; i < rooms; i++) {
    collideRoom(House[i]);
    House[i].printLightState();
  }
  
  // Chekker om lyset er tændt i et vilkårligt rum
  checkHouse();
  
}

void collideRoom(Room rum) {
  if (rum.isRoomClicked(mouseX, mouseY))
    if (rum.light) {
      rum.setLight(false);
      text("Turning off the light in "+rum.getRoomName(), 100, 700);
    } else {
      rum.setLight(true);
      text("Turning on the light in "+rum.getRoomName(), 100, 700);
    }
}

void checkHouse() {
  
  boolean anyLightOn = false;
  
  for (int i = 0; i < rooms; i++) {
    anyLightOn = House[i].isLightOn() || anyLightOn;
  }
  
  if (!anyLightOn) {
    println("Alle lys er slukket.\n");
  } else {
    println("Der er et tændt lys.\n");
  }
  
}
