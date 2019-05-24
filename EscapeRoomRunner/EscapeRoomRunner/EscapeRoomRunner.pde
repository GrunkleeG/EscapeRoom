EscapeRoom e;
EscapeRoom2 a;
boolean scene=false;
PImage p1, p2;
boolean r1, r2=false;

Room1 room1=new Room1();

void setup() {
  e=new EscapeRoom();
  a=new EscapeRoom2();
  size(820, 640);
  p1=loadImage("images/EscapeR.jpg");
  p2=loadImage("images/EscapeR1.jpg");
  a=new EscapeRoom2();
}
void draw() {
  background(0);
  e.click();
  a.clic();
  e.display();
  changeScenes();
  if (r1==true) {
    image(p1, 20, 20);
    p1.resize(800, 600);
  }
  if (r2==true) {
    image(p2, 20, 20);
    p2.resize(800, 600);
  }
}
void changeScenes() {
  if (mousePressed==true && mouseX>350&&mouseX<4500&&mouseY>200&&mouseY<300) {
    room1.display();
    r1=true;
  }
  if (mousePressed==true && mouseX>0&&mouseX<100&&mouseY>400&&mouseY<500) {
    text("good job", 10, 15);
    r2=true;
  }
  if (mousePressed==true && mouseX>0&&mouseX<100&&mouseY>400&&mouseY<500) {
    text("g", 0, 0);
  }
}
