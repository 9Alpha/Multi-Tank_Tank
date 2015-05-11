class Goldfish extends Fish {

  Goldfish() {
    super();
    weight = 15;
    weightAdd = 2;
    maxWeight = 30;
    maxAge = int(random(19, 21) * 1000);
    speedMax = 3;
  }

  Goldfish(float x, float y, int place) {
    super();
    tankNum = place;
    weight = 15;
    weightAdd = 2;
    skin = color(int(random(50)), 240, 240);
    maxWeight = 30;
    maxAge = int(random(19, 21) * 1000);
    fishX = x;
    fishY = y;
    speedMax = 3;
  }

  public boolean tryToEat(Tankable t2) {
    if (t2 instanceof Goldfish) { 
      return false;
    } else if (t2 instanceof Piranha) { 
      return false;
    } else if (t2 instanceof Whale) { 
      return false;
    } else if (t2 instanceof Pellet) { 
      if (weight<maxWeight)
        return true;
    }
    return false;
  }
}
