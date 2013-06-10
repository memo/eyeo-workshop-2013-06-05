float px;
float py;
float numPoints = 3000;
  
void setup() {
  size(600, 600);
  colorMode(RGB, 1.0);
  background(0);
  stroke(1, 1, 1);
}

void draw() {
  fill(0.0, 0.01);
  rect(0, 0, width, height);
  //background(0);
  
  strokeWeight(10);
  float curTime = millis() / 1000.0;
  float theta = sin(curTime * 0.358f) * TWO_PI;
  
  px = width/2;
  py = height/2;
  
  beginShape(LINES);
  for (int i=0; i<numPoints; i++) {
    stroke(
    sin(curTime * 0.8f + i * 0.0011f) * 0.5f + 0.5f, 
    sin(curTime * 0.7f + i * 0.0013f) * 0.5f + 0.5f, 
    sin(curTime * 0.3f + i * 0.0017f) * 0.5f + 0.5f
      );
      
    theta += sin(curTime * 0.5f + i/numPoints * TWO_PI * 1.113617823) * i * 0.00002;
      
    float cos_t = cos(theta);
    float sin_t = sin(theta);

    px += cos_t * 0.3;
    py += sin_t * 0.3;

    vertex(px, py);
  }
  endShape();
}

