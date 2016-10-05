class Draw
{
  private float x;
  private float y;
  private float xSpeed = random(-1, 1);
  private float ySpeed = random(-3, 0);
  private float size = 7.5;


  Draw() 
  {
    x = /* random(width); */ mouseX;
    y = /* random(height); */ mouseY;
    //xSpeed = random(-1, 1);
    //ySpeed = random(-3, 0);
  }

  void run() 
  {
    x = x + xSpeed;
    y = y + ySpeed;
  }

  void  gravity() 
  {
    ySpeed += random(0.05, 0.1);
  }

  void display() 
  {
    strokeWeight(0.75);
    fill(H, 255, 255);
    ellipse(x, y, size, size);
  }

  void setSpeed()
  {
    xSpeed = random(-40, 40);
    ySpeed = random(-40, 4);
  }
}