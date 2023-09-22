int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
float x;
int y;
int p;
int m;
int w;
void setup() {
  size(500, 500);
  strokeWeight(50);
  background(0, 0, 0);
}
void draw() {
  while (endY > -500) {
    x = x - 0.5;
    if (x < 3) {
      x = 3;
    }
    strokeWeight(x);
    stroke(p, m, w);
    endX = startX + (int)(Math.random()*20);
    endY = startY + (int)(Math.random()*20)-10;
    line(startY, startX, endY, endX);
    startX = endX;
    startY = endY;
  }
  fill(0, 20);
  noStroke();
  rect(0, 0, 500, 500);
}
void mousePressed() {
  startX = 0;
  startY = (int)(Math.random()*500);
  endX = 0;
  endY = 150;
  x = 23;
  y = y + 1;
  if (50 >= y) {
    p = 250;
    m = 244;
    w = 53;
  } else if (100 >= y) {
    p = 20;
    m = 200;
    w = 200;
  } else if (200 >= y) {
    p = 229;
    m = 91;
    w = 255;
  } else if (300 >= y) {
    p = 255;
    m = 0;
    w = 0;
  } else if (400 >= y) {
    y = 0;
  }
}
