PVector coor, velo, accel, sz;

void setup() {

  size(displayWidth, displayHeight);
  
  coor = new PVector(width/2, height/2);
  // x = width/2;
  // y = height/2;
  
  sz = new PVector(10, 10);
  // sz = 10;
  
  velo = new PVector(0, 0);
  // vx = 0;
  // vy = 0;
  
  accel = new PVector(random(-1, 1), random(-1, 1));
  // ax = random(-1,1);
  // ax = random(-1,1);
}

void draw() {

//  background(0);
  
  accel.set(random(-1, 1), random(-1, 1));
  sz.set(random(15,20),random(15,20));
  ellipse(coor.x, coor.y, sz.x, sz.y);
  velo.add(accel);
//  vx += ax;
//  vy += ay;
  coor.add(velo);
//  x += vx;
//  y += vy;
  velo.limit(10);
  if(coor.x > width) {
    coor.x = 0;
  }
  if (coor.x < 0) {
    coor.x = width;
  }
  if (coor.y > height) {
    coor.y = 0;
  }
  if (coor.y < 0) {
    coor.y = height;
  }
}

