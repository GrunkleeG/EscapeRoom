public class Room2 { //Keypad
  PImage p3;
  int textx=7;
  int texty= 20;
  int k=125;
  int count;
  int xrow1=140;
  int xrow2=290;
  int xrow3 =450;
  int clickCount;
  int kcount;
  //String text;
  Boolean moveOn;
  Boolean roomFailed;

  public Room2() {
    p3=loadImage("images/1.jpg");
  }
  void setup() {
    moveOn=false;
    count=0;
    kcount=0;
    //text="";
    clickCount=0;
  }
  void display() {
    background(155, 155, 155);
    textSize(20);
    text("keypad to door", 520, texty);
    text("Knowing Chinese might help", 20, texty);
    image(p3, 50, 50);
    p3.resize(500, 120);

    noFill();
    rect(100, 200, k, k); //1
    rect(100, 350, k, k); //4
    rect(100, 500, k, k); //7
    rect(250, 200, k, k); //2
    rect(250, 350, k, k); //5
    rect(250, 500, k, k); //8
    rect(400, 200, k, k);//3
    rect(400, 350, k, k);//6
    rect(400, 500, k, k);//9

    textSize(30);
    text("1", xrow1, 275);
    text("2", xrow2, 275);
    text("3", xrow3, 275);
    text("4", xrow1, 425);
    text("5", xrow2, 425);
    text("6", xrow3, 425);
    text("7", xrow1, 570);
    text("8", xrow2, 570);
    text("9", xrow3, 570);
  }

  void click() {
    clickCount++;
    
    if ( clickCount==1 && mouseX>250&&mouseX<425&&mouseY>500&&mouseY<625) { //8
      kcount=3;
      
    } else if ( clickCount==2 && kcount==3 && mouseX>100&&mouseX<225&&mouseY>350&&mouseY<475) { //4
      kcount=4;
      
    } else if ( clickCount==3 && kcount==4 && mouseX>100&&mouseX<225&&mouseY>500&&mouseY<625) { //7
      kcount=5;
      
    } else  if (clickCount==4 && kcount==5 && mouseX>400&&mouseX<525&&mouseY>350&&mouseY<475) { //6
      moveOn = true;
    } else {
      count++;
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

    if (count>=5) {
      this.setup();
      background(139,0,0);
      println("fail");
      return true;
    } else {
      return false;
    }
  }
}
