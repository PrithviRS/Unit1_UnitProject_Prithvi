



ArrayList draw;
int H = 0;



void setup() 
{
  fullScreen();
  draw = new ArrayList();
  smooth();
  colorMode(RGB, 255);
  background(255);
  if(mouseX == 0 && mouseY == 0)
  {
    background(255);
  }
}

void draw() 
{
  colorMode(HSB, 100);
  H ++;
  if ( H > 100)
  {
    H = 0;
  }
  //background(255);

  for (int i=draw.size()-1; i>=0; i--) 
  {
    Draw d = (Draw) draw.get(i);
    d.run();
    d.gravity();
    d.display();

    if (mousePressed)
    {
      d.setSpeed();
    }


    if (d.y>height) 
    {
      draw.remove(i);
    }
  }


  draw.add(new Draw());
 
}