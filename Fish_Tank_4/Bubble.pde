public class Bubble implements Tankable {
  private float airX, airY;
  private int size;
  private String name;


  public Bubble(float x, float y, int s) {
    airX = x;
    airY = y;
    size = s;
    name = "Bubble";
  }


  public void show() {
    Frames.get(whichTank).getScreen().noStroke();
    Frames.get(whichTank).getScreen().colorMode(RGB);
    Frames.get(whichTank).getScreen().fill(106, 200, 245);
    Frames.get(whichTank).getScreen().ellipse(airX, airY, size, size);
  }

  public void move() {
    if (airY-size > -Tanks.get(whichTank).getSizeY()){
      airY-=.8;
      airX+=.2*sin(radians(millis()));
    }
  }

  public boolean collide(Tankable t) {
    return false;
  }

  public boolean tryToEat(Tankable t) { 
    return false;
  }

  public boolean isDead() {
    return true;
  }

  public float getX() { 
    return airX;
  }

  public float getY() { 
    return airY;
  }

  public float getRadius() { 
    return size/2;
  }

  public int getTank() { 
    return 0;
  }

  public String getname() {
    return name;
  }
}

