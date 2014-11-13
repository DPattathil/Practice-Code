int y,yspeed,yaccel;

void setup() {
  size(displayWidth, displayHeight);
  y = 100;
  yspeed = 0;
  yaccel = 10;
}

void draw() {
  background(0);
  yspeed+=yaccel;
  y+=yspeed;
  ellipse(width/2, y, 20, 20);
  if(y  > height){
    yspeed = -abs(yspeed);
  }
 
}
  
