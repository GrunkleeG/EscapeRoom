class Room1 {
PImage p2;
  public Room1() {
  }

  void setup(){
    p2=loadImage("images/EscapeR1.jpg");
  }

  void display() {
    text("that wont work",100,100);
    
    image(p2, 10, 25);
    p2.resize(800, 600);
  }
  void click(){
    if (mousePressed==true && mouseX>0&&mouseX<100&&mouseY>400&&mouseY<500) {
 text("g", 0, 0);
  }
  }
}
