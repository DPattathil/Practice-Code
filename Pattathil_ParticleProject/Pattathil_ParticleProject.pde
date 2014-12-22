ArrayList<Particle> list = new ArrayList<Particle>();
PImage background;

void setup() {

  size(displayWidth, displayHeight);
   background = loadImage("background.jpg");
   
}

void draw() {

  image(background,0,0,width,height);

  if (frameCount % 60 == 0) {
    list.add(new Particle(random(200,width-200),random(120, 3*height/5)));
  }
  for (int i = list.size() - 1; i >= 0 ; i--) {
    Particle p = list.get(i);
    p.create();
    p.move();
}
}
