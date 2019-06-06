public class Room9 {
  int count;

  public Room9() {
  }
  void setup() {
    background(0);
    count=0;
  }
  void display() {
    cursor(CROSS);
    textSize(40);
    fill(255, 255, 255);
    text("You escaped", 300, 160);
    textSize(20);
    text("Click any key to return to menu", 220, 500);
    text("Answers: \n0: use loose faucet to break door \n1: door at end of hall was the only exit \n2: 8476 ", 190, 200 );
    text("3: Screw driver opens duct \n4: Left or Right \n5: Left -- 6: Right \n7: Left \n8: Use hammer to break doorknob", 190, 325);
  }
  void countChange() {
    if (keyPressed == true) {
      count++;
    } else {
      count=0;
    }
  }

  boolean changeScenes() {
    if (count == 1) {
      return true;
    }
    return false;
  }
}
