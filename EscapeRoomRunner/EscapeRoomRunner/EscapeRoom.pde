public class EscapeRoom {
  PImage p1;
  int count;
  boolean moveOn;
  int textx=7; 
  int texty=10;
  String text;
  int whichCupText;
  int whichDoorText;
  int whichSinkText;
  

  public EscapeRoom() {
    p1=loadImage("images/EscapeR.jpg");
  }
  void setup() { //"resets" the room
    moveOn = false;
    count=0;
    text = "";
    whichCupText = 0;
    whichDoorText = 0;
    whichSinkText = 0;
  }

  void display() {
    textSize(20);
    text(text, textx, texty);
    image(p1, 10, 25);
    p1.resize(800, 600);
    text("jail cell", 700, texty);
  }
  
  //Display text when you hover over things
  void hover() {
    cursor(HAND);
    
    if ( mouseX>400&&mouseX<470&&mouseY>200&&mouseY<300) { //Cup
      if(whichCupText == 0) {
      text = "(Cup)-holds hot liquids";
      } else if (whichCupText == 1) {
       text = "Used for water not escape";
      } else {
        whichCupText = 0;
      }
      
    }else if(mouseX>700&&mouseX<820&&mouseY>200&&mouseY<500){ //Door
    if(whichDoorText == 0) {
      text = "(Door)-the easy way out";
       } else if (whichDoorText == 1) {
         text = "Its Locked";
       }else {
         whichDoorText = 0;
       }
     
      
    } else if (mouseX>0&&mouseX<100&&mouseY>400&&mouseY<500) { // Sin
      text = "(Faucet)- made of aluminum, provides water";
    }
  }
  
  //This is called once per click
  void click() {
    textSize(20);
    if ( mouseX>400&&mouseX<470&&mouseY>200&&mouseY<300) { //Cup
      count++;
      whichCupText++;
      println("Not working");
      
    } else if(mouseX>700&&mouseX<820&&mouseY>200&&mouseY<500){ //Door
      count++;
      whichDoorText++;
      println("Not working");
      
    } else if (mouseX>0&&mouseX<100&&mouseY>400&&mouseY<500) { // Sink{
       text =  "good job";
       moveOn = true;
    }
  }

  boolean changeScenes() {
    if (moveOn) {
      this.setup(); //resets count and moveOn in case we come back again
      return true;
    }
    return false;
  }

  boolean roomFailed() {
    if (count>=3) {
      this.setup();
      return true;
    } else {
      return false;
    }
  }
}
