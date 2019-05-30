class Room4 {
  boolean moveOn;
  int count;
  int textx=7;
  int texty= 20;

  public Room4() {
  }

  void setup() {
    moveOn=false;
    count=0;
  }

  void display() {
    textSize(20);
    text("Success", 550, 20);
  }

  void hover() {
    cursor(HAND);
  }

  void click() {
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
