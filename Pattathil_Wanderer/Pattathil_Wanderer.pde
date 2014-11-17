float x, y, vx, vy, ax, ay, sz;

void setup(){
 
 size(displayWidth, displayHeight);
 x = width/2;
 y = height/2;
 sz = 10;
 vx = 0;
 vy = 0;
 ax = random(-1,1);
 ax = random(-1,1);
 
}

void draw(){
  
  ax = random(-1,1);
  ay = random(-1,1);
  sz = random(20);
  ellipse(x, y, sz, sz);
  vx += ax;
  vy += ay;
  x += vx;
  y += vy;
  vx = constrain(vx, -5, 5);
  vy = constrain(vy, -5, 5);
  if(x > width){
   x = 0; 
  }
  if(x < 0){
   x = width; 
  }
  if(y > height){
   y = 0; 
  }
  if(y < 0){
   y = height; 
  }
}
