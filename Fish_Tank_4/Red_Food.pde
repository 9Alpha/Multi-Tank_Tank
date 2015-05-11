class Red_Food extends Pellet {
  public Red_Food(float x, float y, int t, int s, int place) {
    capX = x;
    capY = y;
    initY = -Tanks.get(place).getSizeY();
    speed = random(.2, 1);
    tankNum = place;
    name = "Food";
    type = t;
    capSkin = color(255, 100, 20);
    size = s;
  }
}

