class CollidingBalls {
  int count = 20;
  float[] sz = new float[count];
  PVector[] loc = new PVector[count];
  PVector[] vel = new PVector[count];
  float speed = 5;

  CollidingBalls() {

    for (int i = 0; i < count; i++) {
      sz[i] = random (20, 40);
      loc[i] = new PVector(random(40, width-40), random(40, height-40));
      vel[i] = PVector.random2D();
      }
    }
    void create() {

      ellipse(loc.x, loc.y, sz.x, sz.y);
    }
  void move() {

    loc.add(vel);
  }
  void bounce() {
   
   if (loc.x + sz.x/2 > width || loc.x - sz.x/2 < 0) {
    vel.x *= -1;
  }

  if (loc.y + sz.y/2 > height || loc.y - sz.y/2 < 0) {
    vel.y *= -1;
  }
    
  }

