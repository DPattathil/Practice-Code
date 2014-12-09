CollidingBalls[] b = new CollidingBalls[200];
BlackHole h;
int count;
void setup() {
  size(displayWidth, displayHeight);
  count = b.length;
  h = new BlackHole();
  for(int i = 0; i < count; i++){
   b[i] = new CollidingBalls(); 
  }
}

void draw() {
  background(255);
  for(int i = 0; i < count; i++){
   
   b[i].create();
  b[i].move();
 b[i].bounce(); 
 h.grow(b[i]);
    
  }
  h.create();
  
  
  
}

