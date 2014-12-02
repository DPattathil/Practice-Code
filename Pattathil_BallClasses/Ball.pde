class Ball {
  PVector loc, vel, acc, sz, mouse;
  Ball() {
    loc = new PVector(random(100,width-100), random(100,height-100));
    vel = PVector.random2D();
    acc = new PVector(0, 0);
    sz = new PVector(20, 20);
    mouse = new PVector();
  }
  
  void display() {
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
}

