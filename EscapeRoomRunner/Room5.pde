class Room5 {
  PImage p4;
  boolean moveRight;
  boolean moveLeft;
  int count;
  int textx=7;
  int texty= 20;

  public Room5() {
    p4=loadImage("images/Duct.jpg");
  }

  void setup() {
    moveRight=false;
    moveLeft=false;
    count=0;
  }

  void display() {
    textSize(20);
    text("With which foot did Neil Armstrong first step on the Moon?", 20, 20);
    text("Duct2",750, 20);
     image(p4, 20, 50);
    p4.resize(800, 500);
  }

  void hover() {
    cursor(ARROW);
    if(keyCode== LEFT){
    moveLeft=true;
    }else if (keyCode ==RIGHT) {
      moveRight=true;
  }else{
    println("bad");
  }
  }
  void click() {
    println("that wont work");
  }
  boolean changeScenes() {
    if (moveLeft) {
      this.setup();
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
