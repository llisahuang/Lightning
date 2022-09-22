int startX = (int)(Math.random()*250) + 70;
int startY = 10;
int endX = 200;
int endY = 10;

void setup()
{
  size(400,400);
  noLoop();
  background (#778899);
  strokeWeight(6);
  stroke(#FFF176);
  frameRate (25);
}
void draw()
{
  background (#778899);
  //lightning
  strokeWeight(6);
  stroke(#FFF176);
  while (endY < 400){
    endY = startY + (int)(Math.random()*30);
    endX = startX + (int)(Math.random()*20) - 10;
    line (startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  //cloud
  fill (#424949);
  noStroke();
  ellipse (30, 27, 140, 60);
  ellipse (90, 30, 140, 80);
  ellipse (160, 30, 140, 80);
  ellipse (220, 27, 140, 80);
  ellipse (300, 27, 140, 90);
  ellipse (370, 27, 140, 60);
}
void mousePressed()
{
  startX = (int)(Math.random()*250) + 70;
  startY = 10;
  endX = startX;
  endY = 10;
  redraw();
}
