int red = 0;
int green = 0;
int blue = 0;
int step = 10;

void setup() {
  size(1000, 500);
  background(255);
}  

void draw () {
  noStroke();
  fill(red, 0, 0);
  rect(0, 0, 100, 50);

  if (mousePressed && mouseX<50 && mouseY<50) {
    red = red +10;
  }

  if (mousePressed && mouseX>50 && mouseX<100 && mouseY<50) {
    red = red - 10;
  }

  if (red>255) {
    red = 255;
  }  

  if (red<-1) {
    red = 0;
  }  
  
  println(red);

  fill(0, green, 0);
  rect(900, 0, 100, 50);

  if (mousePressed && mouseX<50 && mouseY<50) {
    green = green +10;
  }

  if (mousePressed && mouseX>50 && mouseX<100 && mouseY<50) {
    green = green -10;
  }

  if (green>255) {
    green = 255;
  }

  if (green<-1) {
    green = 0;
  }
  
  println(green);
  
  fill(0, 0, blue);
  rect(0, 450, 100, 50);
  
  if(mousePressed && mouseX<50 && mouseY<50) {
    blue = blue +10;
  }
  
  if(mousePressed && mouseX>50 && mouseX<100 && mouseY<50) {
    blue = blue -10;
  }
  
  if(blue>255) {
    blue = 255;
  }
  
  if(blue<-1) {
    blue = 0;
  }
  
  println(blue);
  
  //drawing parts
  if (mousePressed) {
    fill(red, green, blue);
    ellipse(mouseX, mouseY, 8, 8);
  }
} 
