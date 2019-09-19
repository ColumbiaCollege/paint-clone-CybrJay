//Paint Project
//Justin Whitfield

//Integer datatype used to declare variable for color red which is set to 0
int red = 0;
//Integer datatype used to declare variable for color green which is set to 0
int green = 0;
//Integer datatype used to declare variable for color blue which is set to 0
int blue = 0;

//Void function used to declare initial code
void setup() {
  //Function used to declare width and height for window 
  size(1000, 500);
  //Function made to declare color of the background for window
  background(255);
}  

//Void function that's declared after setup to continuously run lines of code 
void draw () {
  //Stroke function that disables the outline of a shape or line
  noStroke();
  //Fill function that declares the color of the left rectangle
  fill(red, 0, 0);
  //Shape function that creates the shape used to store the color
  rect(0, 0, 100, 50);

  //if statement that's used with the mousePressed function to change the color if the mouse is pressed, and to contain the coordinates of the mouseX and mouseY variables 
  if (mousePressed && mouseX<50 && mouseY<50) {
    //Variable for red which increases the color in increments of 10
    red = red +10;
  }

  //if statement that's used with the mousePressed function to change the color if the mouse is pressed, and to contain the coordinates of the mouseX and mouseY variables 
  if (mousePressed && mouseX>50 && mouseX<100 && mouseY<50) {
    //Variable for red which increases the color in decrements of 10
    red = red - 10;
  }
  //if statement that's used to check if the red variable is greater than 255
  if (red>255) {
    //Variable for red that states it is equal to 255
    red = 255;
  }  
  //if statement that's used to check if the red variable is less than 255
  if (red<-1) {
    //Variable for red that states it is equal to 0
    red = 0;
  }  

  //Function used to call the red variable
  println(red);
  //Fill function that declares the color of the right rectangle
  fill(0, green, 0);
  //Shape function that creates the shape used to store the color
  rect(900, 0, 100, 50);

  //if statement that's used with the mousePressed function to change the color if the mouse is pressed, and to contain the coordinates of the mouseX and mouseY variables 
  if (mousePressed && mouseX>900 && mouseX<950 && mouseY<50) {
    //Variable for green which increases the color in increments of 10
    green = green +10;
  }
  //if statement that's used with the mousePressed function to change the color if the mouse is pressed, and to contain the coordinates of the mouseX and mouseY variables 
  if (mousePressed && mouseX>950 && mouseX<1000 && mouseY<50) {
    //Variable for green which increases the color in decrements of 10
    green = green -10;
  }
  //if statement that's used to check if the green variable is greater than 255
  if (green>255) {
    //Variable for green that states it is equal to 255
    green = 255;
  }
  //if statement that's used to check if the green variable is less than 255
  if (green<-1) {
    //Variable for green that states it is equal to 0
    green = 0;
  }

  //Function used to call the green variable
  println(green);
  //Fill function that declares the color of the bottom center rectangle
  fill(0, 0, blue);
  //Shape function that creates the shape used to store the color
  rect(450, 450, 100, 50);

  //if statement that's used with the mousePressed function to change the color if the mouse is pressed, and to contain the coordinates of the mouseX and mouseY variables 
  if (mousePressed && mouseX>450 && mouseX<500 && mouseY>450) {
    //Variable for blue which increases the color in increments of 10
    blue = blue +10;
  }

  //if statement that's used with the mousePressed function to change the color if the mouse is pressed, and to contain the coordinates of the mouseX and mouseY variables 
  if (mousePressed && mouseX>500 && mouseX<550 && mouseY>450) {
    //Variable for blue which increases the color in increments of 10
    blue = blue -10;
  }
  //if statement that's used to check if the blue variable is greater than 255
  if (blue>255) {
    //Variable for blue that states it is equal to 255
    blue = 255;
  }
  //if statement that's used to check if the blue variable is less than 255
  if (blue<-1) {
    //Variable for blue that states it is equal to 0
    blue = 0;
  }

  //Function used to call the blue variable
  println(blue);

  //if statement that's using the mousePressed function to draw the color is the mouse is pressed
  if (mousePressed) {
    //Fill function for the colors that are used when the mouse is pressed
    fill(red, green, blue);
    //Shape function that's created to set the location (which done using the mouseX and mouseY variables), width and height of the circles that are drawn when the mouse is pressed
    ellipse(mouseX, mouseY, 8, 8);
  }
} 
