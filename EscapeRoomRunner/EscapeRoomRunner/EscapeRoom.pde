public class EscapeRoom {
  PImage p1;
  int count;

  public EscapeRoom() {
  }
  void setup() {
    p1=loadImage("images/EscapeR.jpg");
    count=0;
  }

  void display() {

    image(p1, 10, 25);
    p1.resize(800, 600);
  }

  void draw() {
  }
  
  void click() {
    if ( mouseX>400&&mouseX<470&&mouseY>200&&mouseY<300) { //Cup
      if (mousePressed) {
        count++;
        textSize(20);
        text("That won't work", 7, 10);
        println("Not working");
      } else {
        cursor(HAND);
        textSize(20);
        text("(Cup)-holds hot liquids", 7, 10);
      }
    }
  }

  boolean changeScenes() {
    if (mouseX>0&&mouseX<100&&mouseY>400&&mouseY<500) { // Sink
      if (mousePressed) {
        
        text("good job", 10, 15);
        return true;
      } else {
        cursor(HAND);
        textSize(20);
        text("(Faucet)- use metal to break lock on door", 7, 10);
        return false;
      }
    } else {

      return false;
    }
  }

  boolean roomFailed() {
    if (count>=3) {
      count=0;
      return true;
    } else {
      return false;
    }
  }
}
