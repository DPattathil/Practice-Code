import ddf.minim.*; // audio from example code


ArrayList<Present> plist = new ArrayList<Present>(); //present array list
ArrayList<Coal> clist = new ArrayList<Coal>(); // coal array list
PImage background;
PImage santa;
PVector mouse; //vector for locating where the center of santa is
int score; //score for the game


AudioPlayer player; // V  V  V  V  V
Minim minim; //audio code from example

void setup() {

  size(displayWidth, displayHeight);
  background = loadImage("background.jpg"); //load image
  santa = loadImage("santa.png");
  noCursor();
  mouse = new PVector();
  score = 0;

  minim = new Minim(this);
  player = minim.loadFile("song.mp3", 2048); // audio code from example
  player.play();
}

void draw() {

  mouse.set(mouseX-30, height-250); //set a marker for where center of santa is

  image(background, 0, 0, width, height);
  image(santa, mouseX - 100, height - 300);

  textSize(10); //small frame count indicator for testing purposes
  text(frameCount, width-20, 10);

  textSize(72); //large score in the top right
  text(score, 100, 100);


  if (frameCount % 30 == 0) { //spawns a present at a set interval
    plist.add(new Present(random(200, width-200), random(120, 3*height/5)));
  }
  for (int i = plist.size () - 1; i >= 0; i--) {
    Present p = plist.get(i);
    p.create();
    p.move();
    if (p.coor.dist(mouse) < 50) { //checks for proximity to santa
      plist.remove(i);
      score+=5;
    }
    if (p.coor.dist(mouse) > 3000) { //removed if it goes off the screen
      plist.remove(i);
    }
  }
  if (frameCount % 45 == 0) { //spawns a present at a set interval
    clist.add(new Coal(random(200, width-200), random(120, 3*height/5)));
  }
  for (int i = clist.size () - 1; i >= 0; i--) {
    Coal c = clist.get(i);
    c.create();
    c.move();
    if (c.coor.dist(mouse) < 50) { //checks for proximity to santa
      clist.remove(i);
      score-=3;
    }
     if (c.coor.dist(mouse) > 3000) { //removed if it goes off the screen
      clist.remove(i);
    }
  }
}

void stop()
{
  player.close();
  minim.stop();
  super.stop();
}

