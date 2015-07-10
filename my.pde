/* @pjs preload = "link.jpg";*/

int SizeX=480,
SizeY=270;
PImage img;

void setup()
{
  size(SizeX,SizeY);
  img = loadImage("link.jpg");
}


void draw()
{
  for (int i=0;i<1000;i++)
  {
    int x = int(random(SizeX));
    int y = int(random(SizeY));
    color co = img.get(x,y);
    fill(co);
    noStroke();
    float Rad;
    Rad = 100*mouseX/SizeX;
    ellipse(x,y,Rad,Rad);
  }
}

