class Room6 {
  PImage p4;
  boolean moveRight;
  boolean moveLeft;
  int count;
  int textx=7;
  int texty= 20;

  public Room6() {
    p4=loadImage("images/Duct.jpg");
  }

  void setup() {
    moveRight=false;
    moveLeft=false;
    count=0;
  }

  void display() {
    textSize(20);
    text("Use the right and Left arrow keys", 20, texty);
    text("What side of the road do people drive on in China?", 20, texty+ 25);
    text("Duct2",750, texty);
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
  }
  boolean changeScenes() {
    if (moveRight) {
      this.setup(); 
      return true;
    }
    return false;
  }

  boolean roomFailed() {
    if (moveLeft) {
      this.setup();
      return true;
    } else {
      return false;
    }
  }
}
