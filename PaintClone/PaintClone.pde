//finish this paint program.
//if you press more green enough times it goes back to black
//if you press the less green button when the cursor is black it should go to green
//hint modulo command %
//further hint the modulo command in processing doesn't play nice with negatives

//make buttons for blue and red
//debounce the buttons
//hint make a mousePressed method

//Pat on the back for marking your up/down buttons in a nice way.

color cursorcolor = 0;
int red = 0;
int green = 0;
int blue = 0;
int step = 10;

void setup() {
  size(1000, 500);
  background(255);
}



void draw() {
  noStroke();
  //Fill to increase amount of green for left button
  fill(0, green, 0);
  //Location, width, and height for left button
  rect(0, 0, width/10, height/10);
  //if statement condition used to create mousePressed function and parameters for mouseX and mouseY of left button
  if (mousePressed && mouseX<width/10 && mouseY<height/10) {
  //Increment green variable   
    green = green +step;
  } 
  //Fill to decrease amount of green for right button
  fill(0, green, 0);
  //Location, width, and height for right button
  rect(50, 0, width/10, height/10);
  //if statement condition used to create mousePressed function and parameters for mouseX and mouseY of right button
  if (mousePressed && width/10<mouseX && mouseX<width/10 && mouseY<height/10) {
  //Decrement green variable  
    green = green -step;
  }
  
  //This sets color variable to green
  cursorcolor = color(0, green, 0); 
  //Fill to increase amount of red for left button 
  fill(red, 0, 0);
  //Location, width, and 
  
  //drawing part
  if (mousePressed) {
    fill(cursorcolor);
    ellipse(mouseX, mouseY, 8, 8);
  }
}
