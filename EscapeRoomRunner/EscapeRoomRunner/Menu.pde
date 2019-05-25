public class Menu {

  public Menu() {
  }
  void setup() {
    background(0);
  }
  void display() {
    textSize(40);
    text("Prison Escape", 310, 220);
    textSize(20);
    text("Use objects in rooms to escape from room to room" + "\n" + "press any key to begin", 220, 250);
  }
  boolean changeScenes() {
    if (keyPressed == true) {
      return true;
    }
    return false;
  }
}
