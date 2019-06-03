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
    // image(p5, 20, 200);
    // p5.resize(800, 60);
    fill(192, 192, 192);    //hammer
    rect(260, 200, 100, 50);
    fill(139, 69, 19);
    rect(300, 250, 30, 60);

    fill(139, 69, 19); //Broom
    rect(200, 200, 50, 20);
    rect(220, 140, 20, 60);
    fill(222, 184, 135);
    rect(202, 220, 46, 4);

    fill(192, 192, 192); //sword
    rect(120, mouseY-20, 20, 75);
    triangle(mouseX+20, mouseY-45, mouseX+40, mouseY-35, mouseX+40, mouseY-35);
    fill(139, 69, 19);
    rect(120, mouseY+30, 50, 15);
    rect(mouseX+20, mouseY+50, 20, 30);
  }
  void object() {
    cursor(HAND);
    if (hammercount==1) {    //Hammer
      //fill(192, 192, 192);
      //  rect(150, 75, 400, 400);
      //  fill(0);
      // textSize(30);
      // text("Unlocked Hammer", 200, 150);
      // fill(192, 192, 192);
      //  rect(260, 200, 100, 50);
      // fill(139, 69, 19);
      //  rect(300, 250, 30, 60);
      // } else if (hammercount==2) {
      fill(192, 192, 192);
      rect(mouseX, mouseY, 80, 45);
      fill(139, 69, 19);
      rect(mouseX+30, mouseY+45, 27, 54);
    } else if (swordcount==1) {    //Sword
      //  fill(155, 155, 155);
      //} else if (swordcount==2) {
      fill(192, 192, 192);
      rect(mouseX+20, mouseY-20, 20, 75);
      triangle(mouseX+20, mouseY-45, mouseX+40, mouseY-35, mouseX+40, mouseY-35);
      fill(139, 69, 19);
      rect(mouseX, mouseY+30, 50, 15);
      rect(mouseX+20, mouseY+50, 20, 30);
    } else if (broomcount==1) {    //Broom
      fill(155, 155, 155);
      fill(139, 69, 19);
      rect(mouseX, mouseY, 50, 20);
      rect(mouseX+20, mouseY-60, 20, 60);
      fill(222, 184, 135);
      rect(mouseX+2, mouseY+20, 46, 4);
    } else {
      println("bad");
    }
  }

  void hover() {
  }
  void click() {
    if ( mouseX>0&&mouseX<200&&mouseY>0&&mouseY<600) { //Hammer
      hammercount++;
      hhcount++;
    } else if ( mouseX>0&&mouseX<200&&mouseY>0&&mouseY<600 && (hhcount==1) ) { //hammer hitting wall
      moveOn=true;
    } else if ( mouseX>200&&mouseX<400&&mouseY>0&&mouseY<600) { //Sword
      swordcount++;
      sscount++;
    } else if ( mouseX>200&&mouseX<400&&mouseY>0&&mouseY<600 && (sscount==1) ) { //sword cutting bag
      moveOn=true;
    } else if ( mouseX>600&&mouseX<800&&mouseY>0&&mouseY<600) { //broom
      broomcount++;
      bbcount++;
    } else if ( mouseX>600&&mouseX<800&&mouseY>0&&mouseY<600 && (bbcount==1) ) { //broom hitting floor
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
