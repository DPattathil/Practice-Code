class CollidingBalls {
  float sz;
  PVector loc;
  PVector vel;

  CollidingBalls() {
    sz = random (20, 40);
    loc = new PVector(random(40, width-40), random(40, height-40));
    vel = PVector.random2D();
    vel.setMag(10);
  }

  void create() {
    fill(255,0,0);
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {

    loc.add(vel);
  }
  void bounce() {

    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      vel.x *= -1;
    }

    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      vel.y *= -1;
    }
  }
  void disappear(){
    
    loc.set(10000,10000);
    vel.set(0,0);
    
  }

}

