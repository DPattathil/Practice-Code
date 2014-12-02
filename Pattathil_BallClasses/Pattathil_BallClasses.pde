Ball[] b = new Ball[20];

void setup() {
  size(displayWidth, displayHeight);
  for(int i = 0; i < 20; i++){
  b[i] = new Ball();
  }
}

void draw() {
  background(0);

  for(int i = 0; i < 20; i++){
  b[i].display();
  b[i].move();
  b[i].bounce();
  }
  
  
}
