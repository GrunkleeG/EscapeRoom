public class EscapeRoom {
  boolean o= false;
  int room=0;
  int x=100;
  int y=100;
  Room1 room1=new Room1();
  public EscapeRoom() {
  }

  void display() {
    textSize(30);
    text("Try to Escape", 320, 220);
  }

  void draw() {
   
  }
  void click() {
    if (mousePressed==true && mouseX>350&&mouseX<4500&&mouseY>200&&mouseY<300) {
      cursor(HAND);
      o=true;
      room=0;
      textSize(40);
      text("That wont work", 230, 100);
      println("Not working");
      room1.display();
    }

    
  }
}
