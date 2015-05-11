class Pellet implements Tankable {
  float capX, capY, initY;
  float speed;
  color capSkin;
  int type; //1==food, 2==poison
  int size;
  int tankNum;
  String name = "";

  Pellet() {
    capX = int(random(50, 550));
    capY = int(random(50, 550));
    capSkin = color(0, 255, 0);
    type = 0;
    size = 5;
  }

  public int getTank() {
    return tankNum;
  }

  public float getX() {
    return capX;
  }

  public float getY() {
    return initY;
  }

  public float getRadius() {
    return size;
  }

  public boolean isDead() {
    return true;
  }

  public boolean collide(Tankable t) {
    return false;
  }

  public boolean tryToEat(Tankable t2) {
    return false;
  }

  public String getname() {
    return name;
  }

  Pellet(float x, float y, int t, int s, int place) {
    capX = x;
    capY = y;
    initY = -Tanks.get(place).getSizeY();
    speed = random(.2, 1);
    tankNum = place;
    name = "Pellet";

    type = t;
    if (type == 1)
      capSkin = color(0, 255, 0);
    else if (type == 2)
      capSkin = color(255, 0, 0);
    size = s;
  }

  void show() {
    Screens.get(whichTank).noStroke();
    Screens.get(whichTank).fill(capSkin);
    Screens.get(whichTank).ellipse(capX, initY, size, size);
  }

  void move() {
    if (initY < capY)
      initY+=speed;
  }
}
