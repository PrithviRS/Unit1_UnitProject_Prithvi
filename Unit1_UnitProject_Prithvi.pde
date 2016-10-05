import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
AudioPlayer song;
Minim minim;




ArrayList draw;
int H = 0;



void setup() 
{
  minim = new Minim(this);
  song = minim.loadFile("Firework.mp3");
  fullScreen();
  draw = new ArrayList();
  smooth();
  colorMode(RGB, 255);
  background(255);

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
      song.play();
    }


    if (d.y>height || d.y<0 || d.x>width || d.x<0) 
    {
      draw.remove(i);
    }
  }


  draw.add(new Draw());
 
}

void mouseReleased()
{
 if(song.isPlaying())
 {
  song.pause(); 
 }
}