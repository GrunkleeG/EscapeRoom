class Room3 {
  PImage p3;
  String text;
  Boolean partOne;
  Boolean moveOn;
  int count;
  int textx=7; 
  int texty=20;
  int whichTableText;
  int whichMachineText;
  int whichGuardText;
  int whichScrewText;
  int whichDuctText;
  int guardCount;


  public Room3() {
    p3=loadImage("images/Room3.JPG");
  }

  void setup() {
    partOne=false;
    moveOn= false;
    count=0;
    text="";
    whichTableText = 0;
    whichMachineText = 0;
    whichGuardText= 0;
    whichScrewText= 0;
    whichDuctText= 0;
  }

  void display() {
    textSize(20);
    text("code accepted", 500, texty);
    textSize(20);
    text(text, textx, texty);
    image(p3, 10, 45);
    p3.resize(800, 500);
  }

  void hover() {
    cursor(HAND);

    if ( mouseX>650&&mouseX<750&&mouseY>450&&mouseY<500) { //Table
      if (whichTableText == 0) {
        text = "(Table)- where people eat";
      } else if (whichTableText == 1) {
        text = "Useless";
      } else {
        whichTableText = 0;
      }
    } else if ( mouseX>90&&mouseX<150&&mouseY>300&&mouseY<380) { //Vending Machhine
      if (whichMachineText == 0) {
        text = "(Vending Machine)- full of food";
      } else if (whichMachineText == 1) {
        text = "Bank Acount=0";
      } else {
        whichMachineText = 0;
      }
    } else if ( mouseX>430&&mouseX<490&&mouseY>300&&mouseY<380) { //Guard
      if (whichGuardText == 0) {
        text = "(Guard)- Be careful";
      } else if (whichGuardText == 1) {
        text = "are you trying to go back";
      } else {
        whichGuardText = 0;
      }
    } else if (mouseX>300&&mouseX<400&&mouseY>220&&mouseY<350) { //Screw Driver
      if (whichScrewText == 0) {
        text = "(Screw Driver)- a useful tool";
      } else if (whichScrewText == 1) {
        text = "tool picked up";
      } else {
        whichScrewText = 0;
      }
    } else if (mouseX>50&&mouseX<150&&mouseY>50&&mouseY<150) { //Duct
        text = "(Duct) ";
    } else {
      text="";
    }
  }


  void click() {
    if ( mouseX>650&&mouseX<750&&mouseY>450&&mouseY<550) { //Table
      count++;
      whichTableText++;
      
    } else if (mouseX>90&&mouseX<150&&mouseY>300&&mouseY<380) { // Machine
      count++;
      whichMachineText++;
      
    } else  if (  mouseX>600&&mouseX<800&&mouseY>300&&mouseY<500) { //Guard
      guardCount++;
      whichGuardText++;
      
    } else if (mouseX>300&&mouseX<400&&mouseY>220&&mouseY<350) { //Screwdriver 
      partOne=true;
      whichScrewText++;
      println("Helped");
    } else if (mouseX>50&&mouseX<150&&mouseY>50&&mouseY<150 && (partOne)) { //Duct 
      moveOn = true;
    }
  }

  boolean changeScenes() {
    if (moveOn) {
      this.setup(); 
      return true;
    }
    return false;
  }

  boolean roomFailed() {
    if (count>=3|| guardCount>0) {
      this.setup();
      return true;
    } else {
      return false;
    }
  }
}
