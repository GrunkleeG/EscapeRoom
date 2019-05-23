public class EscapeRoom {
  boolean o= false;
  int room=0;
  int x=100;
  int y=100;
  String text="Try to Escape";
  String textm="That won't work";
  Room1 room1=new Room1();
  public EscapeRoom() {
  }

  void display() {

    fill(192, 192, 192);
    rect(350, 200, 100, 100);

    fill(0, 102, 153);
    textSize(20);
    text("Play Game", 360, 220);
  }

  void draw() {
    text(text, 50, 50, y, 80);
    text(textm, 50, 50, y, 20);
  }
  void click() {
    if (mousePressed==true && mouseX>350&&mouseX<4500&&mouseY>200&&mouseY<300) {
      cursor(HAND);
      o=true;
      room=0;
      background(154);
      textSize(40);
      text("Try to Escape", 230, 100);
      println("Hello");
      room1.display();
    }

    
  }
}
