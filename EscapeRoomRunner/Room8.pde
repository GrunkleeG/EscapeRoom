class Room8 {
  PImage p5;
  boolean moveOn;
  boolean failOn;
  boolean timer;
  String text;
  int texty= 20;
  int hammercount;
  int swordcount;
  int broomcount;
  int hhcount;
  int bbcount;
  int sscount;
  int count;
  int totalTime;
  int savedTime;
  int passedTime;
  double speed = 1.8;
  float x=0;

  public Room8() {
    p5=loadImage("images/Room8.jpg");
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
    failOn=false;
    timer=false;
    totalTime=40000;
    text="";
  }

  void draw() {
  }

  void display() {
    background(0);
    textSize(20);
    fill(255, 255, 255);
    text("Use tools to escape", 20, texty);
    text("Utility Room", 650, texty);
    text(text, 20, texty+23);

    image(p5, 20, 40);
    p5.resize(800, 510);

    passedTime = millis()-savedTime;
    text((totalTime-passedTime)/1000 +" seconds", 650, texty+25);
    text(text, 20, texty+23);
  }
  void broomDisplay() {
    if (broomcount==0 || broomcount>=2) {     
      fill(139, 69, 19); 
      rect(200, 500, 50, 20);
      rect(210, 350, 15, 150);
      fill(222, 184, 135);
      rect(202, 520, 46, 4);
    }
  }
  void swordDisplay() {
    if (swordcount==0 || swordcount>=2) { 
      fill(192, 192, 192); 
      rect(120, 350, 20, 75); 
      triangle(120, 350, 140, 350, 130, 330);
      fill(139, 69, 19);
      rect(120, 425, 20, 30);
      rect(110, 425, 40, 15);
    }
  }
  void hammerDisplay() {
    if (hammercount==0 || hammercount>=2) {
      fill(192, 192, 192);    
      rect(270, 320, 40, 30);
      fill(139, 69, 19);
      rect(280, 350, 20, 70);
    }
  }

  void object() {
    cursor(HAND);
    if (hammercount==1) {    //Hammer
      fill(192, 192, 192);    
      rect(mouseX-10, mouseY, 40, 30);
      fill(139, 69, 19);
      rect(mouseX, mouseY+30, 20, 70);
      text= "(Hammer)";
    } else if (swordcount==1) {    //Sword
      fill(192, 192, 192); //sword
      rect(mouseX, mouseY-75, 20, 75); 
      triangle(mouseX, mouseY-75, mouseX+20, mouseY-75, mouseX+10, mouseY-95);
      fill(139, 69, 19);
      rect(mouseX, mouseY, 20, 30);
      rect(mouseX-10, mouseY, 40, 15);
      text= "(Sword)";
      if (sscount==2) {
        text= "Toxic Gases will kill you soon";
      }
    } else if (broomcount==1) {    //Broom
      fill(139, 69, 19); //Broom
      rect(mouseX, mouseY, 50, 20);
      rect(mouseX+10, mouseY-150, 15, 150);
      fill(205, 133, 63);
      rect(mouseX+2, mouseY+20, 46, 4);
      text="(Broom)";
    } else {
      text="";
    }
  }

  boolean timerS() {
    if (passedTime > totalTime) {
      savedTime = millis(); 
      return true;
    } else {
      return false;
    }
  }

  void gases() {
    if ((totalTime-passedTime)<5500) {
      fill(152, 251, 152, 150);
      x+=speed;
      rect(0, x-600, 820, 600);
    }
  }
  void click() {
    if ( mouseX>270&&mouseX<310&&mouseY>320&&mouseY<420 && swordcount==0 && broomcount==0 && hammercount==0 ) { //Hammer
      hammercount++;
      hhcount++;
    } else if ( mouseX>270&&mouseX<310&&mouseY>320&&mouseY<420 && (hammercount==1)) { //Hammer
      hammercount=0;
      hhcount=0;
    } else if ( mouseX>600&&mouseX<675&&mouseY>370&&mouseY<490 && (hhcount==1) ) { //hammer hitting doorknob
      moveOn=true;
    } else if ( mouseX>110&&mouseX<150&&mouseY>330&&mouseY<455 && broomcount==0 && hammercount==0 && swordcount==0) { //Sword
      swordcount++;
      sscount++;
    } else if ( mouseX>110&&mouseX<150&&mouseY>330&&mouseY<455 && (swordcount==1)) { //Sword
      swordcount--;
      sscount--;
    } else if ( mouseX>0&&mouseX<300&&mouseY>0&&mouseY<200 && (sscount==1) ) { //sword cutting pipes
      sscount++;
      totalTime= 20000;
    } else if ( mouseX>200&&mouseX<250&&mouseY>350&&mouseY<525 && broomcount==0 && hammercount==0 && swordcount==0 ) { //broom
      broomcount++;
      bbcount++;
    } else if ( mouseX>200&&mouseX<250&&mouseY>350&&mouseY<525 && (broomcount==1)) { //broom
      broomcount--;
      bbcount--;
    } else if ( mouseX>0&&mouseX<800&&mouseY>0&&mouseY<600 && (bbcount==1) ) { //broom hitting floor
      text= "cleaning will not help you escape";
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
    if (failOn || timerS()) {
      this.setup();
      return true;
    } else {
      return false;
    }
  }
}
