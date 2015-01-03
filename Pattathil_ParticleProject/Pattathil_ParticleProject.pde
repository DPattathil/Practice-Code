ArrayList<Particle> plist = new ArrayList<Particle>();
ArrayList<Bomb> blist = new ArrayList<Bomb>();
PImage background;

void setup() {

  size(displayWidth, displayHeight);
   background = loadImage("background.jpg");
   
}

void draw() {

  image(background,0,0,width,height);

  if (frameCount % 60 == 0) {
    plist.add(new Particle(random(200,width-200),random(120, 3*height/5)));
  }
  for (int i = plist.size() - 1; i >= 0 ; i--) {
    Particle p = plist.get(i);
    p.create();
    p.move();
}

if (frameCount % 300 == 0) {
    blist.add(new Bomb(random(200,width-200),random(120, 3*height/5)));
  }
  for (int i = blist.size() - 1; i >= 0 ; i--) {
    Bomb b = blist.get(i);
    b.create();
    b.move();
}
}
