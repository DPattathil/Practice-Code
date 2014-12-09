class BlackHole {
  PVector loc;
  float sz;
  BlackHole() {

    loc = new PVector(random(width), random(height)); 
    sz = 10;
  }

  void create() {

    fill(0);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void grow(CollidingBalls tempball) {

    if (loc.dist(tempball.loc) < sz/2 + tempball.sz/2) {
      tempball.disappear();
      sz+=10;
    }
  }
}

