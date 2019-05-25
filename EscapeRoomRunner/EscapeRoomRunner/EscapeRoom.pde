public class EscapeRoom {

 // Room1 room1=new Room1();
  public EscapeRoom() {
  }

  void display() {
    textSize(20);
    text("Try to escape", 360, 220);
  }

  void draw() {
   
  }
  void click() {
    if( mouseX>400&&mouseX<470&&mouseY>200&&mouseY<300){
    cursor(HAND);
    textSize(20);
    text("click to grab cup", 7, 10);
    }
    
    if (mousePressed==true && mouseX>350&&mouseX<400&&mouseY>200&&mouseY<300) {
      cursor(HAND);
      textSize(20);
      text("That won't work", 7, 10);
      println("Not working");
     }

    
  }
}
