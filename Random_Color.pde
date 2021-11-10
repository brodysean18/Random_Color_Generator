import java.util.Random;

int R;
int G;
int B;

void setup() {
  background (255);
  R = 255;
  G = 255;
  B = 255;
  size(500, 500);
}

void randomizeColor() {
  Random random = new Random();
  R = random.nextInt(255);
  G = random.nextInt(255);
  B = random.nextInt(255);
  background(R,G,B);
}

void drawButton() {
  fill(255 - R, 255 - G, 255 - B);
  rect(250, 450, 100, 35);
  textAlign(CENTER, CENTER);
  textSize(17);
  if((R + G + B) >= 382) {fill(255);}
  else {fill(0);}
  text("New Color", 250, 448);
}

void drawRGB() {
  textAlign(CENTER, CENTER);
  textSize(30);
  if((R + G + B) <= 382) {fill(255);}
  else {fill(0);}
  text(R + " " + G + " " + B, 250, 50);
  String hex = String.format("#%02X%02X%02X", R, G, B);
  text(hex, 250, 100);
}

void draw() {
  stroke(0);
  rectMode(CENTER);
  
  drawButton();
  drawRGB();
}

void mouseClicked() {
  if(mouseX >= 200 && mouseX <= 300 && mouseY >= 400 && mouseY <= 500) {
    randomizeColor();
  }
}
