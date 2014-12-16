class Particle {
  float sz;
  float life;
  PVector coor, vel, accel;

  Particle(float x, float y) {

    sz = random(5, 100);
    life = 255;
    coor = new PVector(x, y);
    vel = new PVector(random(-5, 5), random(-5, -1));
    accel = new PVector(0, .1);
  }

  void create(){

    ellipse(coor.x, coor.y, sz, sz);
  }

  void move(){
    vel.add(accel);
    coor.add(vel);
  }
}



