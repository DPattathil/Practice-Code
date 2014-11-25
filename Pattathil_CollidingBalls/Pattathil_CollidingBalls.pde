int count = 20;
PVector[] loc = new PVector[count];
PVector[] vel = new PVector[count];
PVector[] acc = new PVector[count]; 
float[] sz = new float[count];


void setup() {
  size(displayWidth, displayHeight);
  for(int i = 0; i < count; i++){
    sz[i] = random (20, 40);
    loc[i] = new PVector(40, width-40), (40, height-40)
    
}

void draw() {

  background(0);

  loc.add(vel);
  loc1.add(vel1);
  ellipse(loc.x, loc.y, sz.x, sz.y);
  ellipse(loc1.x, loc1.y, sz1.x, sz1.y);
  if (loc.x + sz.x/2 > width || loc.x - sz.x/2 < 0) {
    vel.x *= -1;
  }

  if (loc.y + sz.y/2 > height || loc.y - sz.y/2 < 0) {
    vel.y *= -1;
  }
  if (loc1.x + sz1.x/2 > width || loc1.x - sz1.x/2 < 0) {
    vel1.x *= -1;
  }

  if (loc1.y + sz1.y/2 > height || loc1.y - sz1.y/2 < 0) {
    vel1.y *= -1;
  }
  if (loc.dist(loc1) < sz.x) {

    if (loc.x < loc1.x) {    //if ball 1 is on the left
      vel.x = -abs(vel.x);
      vel1.x = abs(vel1.x);
    } else {
      vel.x = abs(vel.x);
      vel1.x = -abs(vel1.x);
    }
    if (loc.y < loc1.y) {
      vel.y = -abs(vel.y);
      vel1.y = abs(vel1.y);
    } else {
      vel.y = abs(vel.y);
      vel1.y = -abs(vel1.y);
    }
  }
}

