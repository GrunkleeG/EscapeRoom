class Room3 {
  boolean moveRight;
  boolean moveLeft;
  int count;
  int textx=7;
  int texty= 20;

  public Room3() {
  }

  void setup() {
    moveRight=false;
    moveLeft=false;
    count=0;
  }

  void display() {
    textSize(20);
    text("Success", 550, 20);
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
      this.setup(); //resets count and moveOn in case we come back again
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
