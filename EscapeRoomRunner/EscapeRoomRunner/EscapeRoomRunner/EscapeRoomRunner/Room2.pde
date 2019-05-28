public class Room2 {
  int texty= 10;

  public Room2() {
  }
  void display() {
    textSize(20);
    text("keypad- door is opportunity", 500, texty);
  }

  void click() {
    if (mousePressed==true && mouseX>300&&mouseX<400&&mouseY>200&&mouseY<280) {
      println("Hi");
    }
  }
}
