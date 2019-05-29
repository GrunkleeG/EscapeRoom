class Room4 {
  boolean moveOn;
  int count;

  public Room4() {
  }

  void setup() {
    moveOn=false;
    count=0;
  }

  void display() {
    textSize(20);
    text("success- chinese will be helpful", 500, 20);
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
