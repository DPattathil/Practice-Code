ArrayList<Particle> list = new ArrayList<Particle>();

void setup() {

  size(displayWidth, displayHeight);
   
}

void draw() {

  background(0);

  if (mousePressed) {
    list.add(new Particle(random(150,width-150),random(120, 3*height/5)));
  }
  for (int i = list.size() - 1; i >= 0 ; i--) {
    Particle p = list.get(i);
    p.create();
    p.move();
}
}
