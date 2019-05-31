int roomNum;

EscapeRoom room0;
Room1 room1;
Room2 room2; //2=new Room2();
Menu menu; //= new Menu();
Room4 room4;
Room3 room3;
Room5 room5; 
Room6 room6; 
Room7 room7; 

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
  size(820, 640);
  menu.setup();
  room0.setup();
  room1.setup();
  room2.setup();
  room4.setup();
  room5.setup();
  room6.setup();
  room7.setup();
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
    roomNum=4;
    //room3.display();
    //room3.hover();
    //if (room3.changeScenes()) {
    // roomNum=4;
    //}
    // if (room3.roomFailed()) {
    //  roomNum=-1;
    //}
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
      roomNum=-1;
    }
  } else if (roomNum ==7) {
    room7.display();
    if (room7.changeScenes()) {
      roomNum=8;
    }
    if (room7.roomFailed()) {
      roomNum=-1;
    }
  }
}

void mousePressed() { //Processing calls this when you press and release the mouse
  if (roomNum == -1) {
    //We're not clicking in the menu area
  } else if (roomNum == 0) {
    room0.click();
  } else if (roomNum == 1) {
    room1.click();
  } else if (roomNum == 2) {
    room2.click();
  } else if (roomNum==3) {
    room4.click();
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
