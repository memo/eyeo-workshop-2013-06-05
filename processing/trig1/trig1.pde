void setup () {
  size(500, 500);
  frameRate(60);
}

void draw() {
  //  background(0);
  fill(200, 5);
  rect(0, 0, width, height);
  
  float t = millis()/1000.0 * TWO_PI / 4;
  float fy = sin(t);
  float y = map(fy, -1, 1, 0, height);

  float fx = cos(t);
  float x = map(fx, -1, 1, 0, width);

  fill(255);
  ellipse(x, y, 30, 30);
}

void keyPressed() {
  background(200);
}

