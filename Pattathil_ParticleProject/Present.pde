class Present {
  float sz;
  PVector coor, vel, accel;
  PImage present;

  Present(float x, float y) {

    sz = random(50, 100);
    coor = new PVector(x, y);
    vel = new PVector(random(-3, 3), random(-5, -1));
    accel = new PVector(0, .1);
    present = loadImage("present.gif");
  }

  void create() {

    image(present, coor.x, coor.y, sz, sz);
  }

  void move() {
    vel.add(accel);
    coor.add(vel);
  }
}

