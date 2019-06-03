class Room8 {
  PImage p5;
  boolean moveOn;
  int texty= 20;
  int hammercount;
  int swordcount;
  int broomcount;
  int hhcount;
  int bbcount;
  int sscount;
  int count;

  public Room8() {
    p5=loadImage("images/Hammer.jpg");
  }
  void setup() {
    hammercount=0;
    swordcount=0;
    broomcount=0;
    hhcount=0;
    bbcount =0;
    sscount=0;
    count=0;
    moveOn=false;
  }

  void draw() {
  }

  void display() {
    background(0);
    textSize(20);
    fill(255, 255, 255);
    text("Use tools to click on objects", 20, texty);
    text("Utility Room", 650, texty);
   // image(p5, 200, 200);
   // p5.resize(200, 200);
  }
  void object() {
    cursor(HAND);
    if (hammercount==1) {    //Hammer
      fill(192, 192, 192);
      rect(150,75, 400, 400);
      fill(0);
      text("Unlocked Sword", 200, 150);
      image(p5, 250, 100);
      p5.resize(200,200);
    } else if(hammercount==2){
        fill(155, 155, 155);
        // image(p4, mouseX, mouseY);
    } else if (swordcount==1) {    //Sword
      fill(155, 155, 155);
      ellipse(mouseX, mouseY, 66, 66);
    } else if (broomcount==1) {    //Broom
      fill(155, 155, 155);
      ellipse(mouseX, mouseY, 66, 66);
    } else {
      println("bad");
    }
  }

  void hover() {
  }
  void click() {
    if ( mouseX>0&&mouseX<800&&mouseY>0&&mouseY<600) { //Hammer
      hammercount++;
      hhcount++;
    } else if ( mouseX>0&&mouseX<800&&mouseY>0&&mouseY<600 && (hhcount==1) ) { //hammer hitting wall
      moveOn=true;
    } else if ( mouseX>0&&mouseX<800&&mouseY>0&&mouseY<600) { //Sword
      swordcount++;
      sscount++;
    } else if ( mouseX>0&&mouseX<800&&mouseY>0&&mouseY<600 && (sscount==1) ) { //sword cutting bag
      moveOn=true;
    } else if ( mouseX>0&&mouseX<800&&mouseY>0&&mouseY<600) { //broom
      broomcount++;
      bbcount++;
    } else if ( mouseX>0&&mouseX<800&&mouseY>0&&mouseY<600 && (bbcount==1) ) { //broom hitting floor
      text("cleaned the floor", 20, texty);
    } else {
      println("ok");
    }
  }
  boolean changeScenes() {
    if (moveOn) {
      this.setup(); 
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
