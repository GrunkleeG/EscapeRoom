EscapeRoom e;
EscapeRoom2 a;
boolean scene=false;
Room1 room1=new Room1();

void setup() {
  size (800, 600);
  e=new EscapeRoom();
  a=new EscapeRoom2();
}
void draw() {
  background(0);
  e.click();
  a.clic();
  e.display();
  changeScenes();
  
}

void changeScenes(){
  if(mousePressed==true && mouseX>350&&mouseX<4500&&mouseY>200&&mouseY<300){
    scene=true;
    room1.display();
  }
  if(mousePressed==true && mouseX>350&&mouseX<4500&&mouseY>200&&mouseY<300){
    scene=true;
    room1.display();
  }
  
}
