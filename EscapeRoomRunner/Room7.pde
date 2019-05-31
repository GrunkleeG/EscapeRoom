class Room7 {
  PImage p4;
  boolean moveRight;
  boolean moveLeft;
  int count;
  int textx=7;
  int texty= 20;

  public Room7() {
    p4=loadImage("images/Duct.jpg");
  }

  void setup() {
    moveRight=false;
    moveLeft=false;
    count=0;
  }

  void display() {
    textSize(20);
    text("Use the Right and Left arrow keys", 20, texty);
    text("With which foot did Neil Armstrong first step on the Moon?", 20, texty+25);
    text("Duct3", 750, 20);
    image(p4, 20, 50);
    p4.resize(800, 500);
  }

  void hover() {
    if (keyCode== LEFT) {
      moveLeft=true;
    } else if (keyCode ==RIGHT) {
      moveRight=true;
    } else {
      println("bad");
    }
  }
  void click() {
  }
  boolean changeScenes() {
    if (moveLeft) {
      this.setup(); //resets count and moveOn in case we come back again
      return true;
    }
    return false;
  }

  boolean roomFailed() {
    if (moveRight) {
      this.setup();
      return true;
    } else {
      return false;
    }
  }
}
