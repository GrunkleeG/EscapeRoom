# EscapeRoom

# Project Title and purpose

One Paragraph of project description goes here:
EscapeRoom is a game that causes a person to interact with certain rooms and scenes to pass them and travel through them. Passing the rooms gets increasingly difficult as playing progresses. Rooms continue to become more complex as well.

### Difficulties or opportunities you encountered along the way.

The toughest part was...
The main part of my code is using if(mousePressed in a ceratin location) then this action happens. Having actions occur in order was the most difficult part as it had to include muliple parts of an if-else statement.

### Most interesting piece of your code and explanation for what it does.

void click() {
    clickCount++;
    println("good");
    
    if ( clickCount==1 && mouseX>250&&mouseX<425&&mouseY>500&&mouseY<625) { //8
      kcount=3;
      println("good1");
    } else if ( clickCount==2 && kcount==3 && mouseX>100&&mouseX<225&&mouseY>350&&mouseY<475) { //4
      kcount=4;
      println("good2");
    } else if ( clickCount==3 && kcount==4 && mouseX>100&&mouseX<225&&mouseY>500&&mouseY<625) { //7
      kcount=5;
      println("good3");
    } else  if (clickCount==4 && kcount==5 && mouseX>400&&mouseX<525&&mouseY>350&&mouseY<475) { //6
      moveOn = true;
    } else {
      count++;
    }
  }
This is the code that allows a user to click on a keypad. This set of code checks if each key is clicked in order and makes sure all keys are clicked. While it is simple, it is basic code that is necessary for the basics of the escape room. In the runner I have a mousePressed method that runs the click method when this room is called.

* [Processing](https://processing.org/) - The IDE used

## Authors

Keegan Henning
George Grunklee

## Acknowledgments
* George's brother Jacob helped organzie the code and if statements in the draw class in the runner.
