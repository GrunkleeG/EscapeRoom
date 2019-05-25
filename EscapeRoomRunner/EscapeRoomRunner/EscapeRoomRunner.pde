
int roomNum;

EscapeRoom room0 = new EscapeRoom();
Room1 room1=new Room1();
Room2 room2=new Room2();
Menu menu= new Menu();


void setup() {
  size(820, 640);
  menu.setup();
  room0.setup();
  room1.setup();
  roomNum = -1;
}

void draw() {
  background(0);
  System.out.println(roomNum);
  if (roomNum == -1) {
    menu.display();
    if (menu.changeScenes()) {
      roomNum=0;
    }
  } else if (roomNum == 0) {
    room0.click();
    room0.display();
    if (room0.changeScenes()) {
      roomNum = 1;
    }
    if(room0.roomFailed()){
      roomNum=-1;
    }
    
  } else if (roomNum == 1) {
    room1.click();
    room1.display();
  } else if (roomNum == 2) {
    room2.click();
    room2.display();
  } else {
    roomNum = -1;
  }
}

//void mousePressed() {
//  if (roomNum == -1) {
//  } else if (roomNum == 0) {
    
//  } else if (roomNum == 1) {
//  } else if (roomNum == 2) {
//  } else {
//  }
//}
