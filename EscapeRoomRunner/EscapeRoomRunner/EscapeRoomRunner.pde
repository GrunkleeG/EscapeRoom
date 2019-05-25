
boolean scene=false;
PImage p1, p2;
boolean r1, r2=false;

EscapeRoom room0 = new EscapeRoom();
Room1 room1=new Room1();
Room2 room2=new Room2();


void setup() {
  size(820, 640);
  p1=loadImage("images/EscapeR.jpg");
  p2=loadImage("images/EscapeR1.jpg");
}

void draw() {
  background(0);
  room0.click();
  room2.clic();
  room0.display();
  changeScenes();
  if (r1==true) {
    image(p1, 10, 25);
    p1.resize(800, 600);
  }
  if (r2==true) {
    image(p2, 10, 25);
    p2.resize(800, 600);
  }
}
void changeScenes() {
  if (mousePressed==true && mouseX>350&&mouseX<4500&&mouseY>200&&mouseY<300) {
    room0.display();
    r1=true;
  }
  if (mousePressed==true && mouseX>0&&mouseX<100&&mouseY>400&&mouseY<500) {
    text("good job", 10, 15);
    room1.display();
    r2=true;
  }
  if (mousePressed==true && mouseX>0&&mouseX<100&&mouseY>400&&mouseY<500) {
    text("g", 0, 0);
    room2.display();
  }
}
