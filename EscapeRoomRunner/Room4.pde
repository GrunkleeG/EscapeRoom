class Room4 {
  PImage p4;
  boolean moveRight;
  boolean moveLeft;
  int count;
  int textx=7;
  int texty= 20;

  public Room4() {
    p4=loadImage("images/Duct.jpg");
  }

  void setup() {
    moveRight=false;
    moveLeft=false;
    count=0;
  }

  void display() {
    textSize(20);
    text("Use the right and Left arrow keys to crawl through Duct", 20, 20);
    text("Duct",750, 20);
    image(p4, 20, 50);
    p4.resize(800, 500);
  }

  void hover() {
    if(keyCode== LEFT){
    moveLeft=true;
    }else if (keyCode ==RIGHT) {
      moveRight=true;
  }else{
    println("bad");
  }
  }
  void click() {
  }
  boolean changeScenes() {
    if (moveRight) {
      this.setup(); 
      room5.setup();
      room6.setup();
      room7.setup();
      return true;
    }
    return false;
  }

  boolean roomFailed() {
    if (moveLeft) {
      this.setup();
      room5.setup();
      room6.setup();
      room7.setup();
      return true;
    } else {
      return false;
    }
  }
}
