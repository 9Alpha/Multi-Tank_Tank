class Whale extends Fish {


  Whale(float x, float y) {
    super();
    weight = 30;
    weightAdd = 10;
    skin = color(int(random(100, 200)));
    maxWeight = 100;
    maxAge = int(random(29, 31) * 1000);
    fishX = x;
    fishY = y;
    speedMax = 1.5;
  }

  public boolean tryToEat(Tankable t2) {
    if (t2 instanceof Goldfish) { 
      if (weight<maxWeight)
        return true;
    } else if (t2 instanceof Piranha) { 
      if (weight<maxWeight)
        return true;
    } else if (t2 instanceof Whale) { 
      return false;
    } else if (t2 instanceof Pellet) { 
      if (weight<maxWeight)
        return true;
    }
    return false;
  }
}