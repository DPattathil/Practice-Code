PVector loc, vel, acc, sz, mouse;

void setup() {
  size(displayWidth, displayHeight);
  loc = new PVector(width/2, height/2);
  vel = PVector.random2D();
  acc = new PVector(0, 0);
  sz = new PVector(200, 200);
  mouse = new PVector();
}

void draw() {
  mouse.set(mouseX, mouseY);
  if (loc.dist(mouse) < sz.x/2) {
    if (mouse.x < loc.x) {
      vel.x = abs(vel.x);
    } else {
      vel.x = -abs(vel.x);
    }
    if (mouse.y < loc.y)
    {
      vel.y = abs(vel.y);
    } else {
      vel.y = -abs(vel.y);
    }
  }
  loc.add(vel);
  ellipse(loc.x, loc.y, sz.x, sz.y);
  if (loc.x + sz.x/2 > width || loc.x - sz.x/2 < 0) {
    vel.x *= -1;
  }

  if (loc.y + sz.y/2 > height || loc.y - sz.y/2 < 0) {
    vel.y *= -1;
  }
}

