void setup () {
  size(500, 500);
  frameRate(60);
}

void draw() {
  //  background(0);
  fill(200, 4);
  rect(0, 0, width, height);
  
  float t = millis()/1000.0 * TWO_PI / 4;
  float o = millis() * 0.001;
  float a = map(sin(t * 2 + o), -1, 1, 0.0, 0.3);
  
  float fy = sin(t) + sin(t * 10) * a;
  float y = map(fy/2, -1, 1, 0, height);

  float fx = cos(t) + cos(t * 10) * a;
  float x = map(fx/2, -1, 1, 0, width);

  fill(255);
  ellipse(x, y, 30, 30);
}

void keyPressed() {
  background(200);
}

