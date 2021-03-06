int roomNum;

Menu menu;
EscapeRoom room0;
Room1 room1;
Room2 room2; 
Room3 room3;
Room4 room4;
Room5 room5; 
Room6 room6; 
Room7 room7; 
Room8 room8;
Room9 room9;

void setup() {
  menu = new Menu();
  room0 = new EscapeRoom();
  room1 = new Room1();
  room2 =new Room2();
  room3 = new Room3();
  room4 = new Room4();
  room5 = new Room5();
  room6 = new Room6();
  room7 = new Room7();
  room8 = new Room8();
  room9 = new Room9();
  size(820, 640);
  menu.setup();
  room0.setup();
  room1.setup();
  room2.setup();
  room3.setup();
  room4.setup();
  room5.setup();
  room6.setup();
  room7.setup();
  room8.setup();
  room9.setup();
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
    room0.display();
    room0.hover();
    if (room0.changeScenes()) {
      roomNum = 1;
    }
    if (room0.roomFailed()) {
      roomNum=-1;
    }
  } else if (roomNum == 1) {
    room1.display();
    room1.hover();
    if (room1.changeScenes()) {
      roomNum= 2;
    }
    if (room1.roomFailed()) {
      roomNum=-1;
    }
  } else if (roomNum == 2) {
    room2.display();
    if (room2.changeScenes()) {
      roomNum= 3;
    }
    if (room2.roomFailed()) {
      roomNum=-1;
    }
  } else if (roomNum ==3) {
    room3.display();
    room3.hover();
    if (room3.changeScenes()) {
      roomNum=4;
    }
    if (room3.roomFailed()) {
      roomNum=-1;
    }
  } else if (roomNum ==4) {
    room4.display();
    if (room4.changeScenes()) {
      roomNum=5;
    }
    if (room4.roomFailed()) {
      roomNum=6;
    }
  } else if (roomNum ==5) {
    room5.display();
    if (room5.changeScenes()) {
      roomNum=7;
    }
    if (room5.roomFailed()) {
      roomNum=3;
    }
  } else if (roomNum ==6) {
    room6.display();
    if (room6.changeScenes()) {
      roomNum=7;
    }
    if (room6.roomFailed()) {
      roomNum=3;
    }
  } else if (roomNum ==7) {
    room7.display();
    if (room7.changeScenes()) {
      roomNum=8;
    }
    if (room7.roomFailed()) {
      roomNum=-1;
    }
  } else if (roomNum==8) {
    room8.display();
    room8.object();
    room8.broomDisplay();
    room8.swordDisplay();
    room8.hammerDisplay();
    room8.gases();
    if (room8.changeScenes()) {
      roomNum=9;
    }
    if (room8.roomFailed()) {
      roomNum=-1;
    }
  } else if (roomNum == 9) {
    room9.display();
    room9.countChange();
    if (room9.changeScenes()) {
      roomNum=-1;
    }
  }
}

void mousePressed() { 
  if (roomNum == -1) {
    
  } else if (roomNum == 0) {
    room0.click();
  } else if (roomNum == 1) {
    room1.click();
  } else if (roomNum == 2) {
    room2.click();
  } else if (roomNum==3) {
    room3.click();
  } else if (roomNum==4) {
    room4.click();
  } else if (roomNum==8) {
    room8.click();
  }
}

void keyPressed() {
  if (roomNum==4) {
    room4.hover();
  } else if (roomNum==5) {
    room5.hover();
  } else if (roomNum==6) {
    room6.hover();
  } else if (roomNum== 7) {
    room7.hover();
  }
} 
