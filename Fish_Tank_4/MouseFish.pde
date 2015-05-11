class MouseFish extends Fish {

  MouseFish(float x, float y, int place) {
    super();
    tankNum = place;
    weight = 15;
    weightAdd = 2;
    skin = color(int(random(50)), 240, 240);
    maxWeight = 30;
    maxAge = int(random(19, 21) * 1000);
    fishX = x;
    fishY = y;
    speedMax = .05;
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


   void move() {



    time++;


    if (dead == false) {
      if (time % timeMod == 0) {
        if (age < int(.9 * maxAge))
          speed = random(.3, speedMax);
        else
          speed = random(.2, .8);

        deltaX = speed * sin(radians(heading));
        deltaY = -speed * cos(radians(heading));
      }
      if (time % airMod == 0) {
        addBub = true;
      }
    }


    if (dead == false)
      ammonia+=1;




   
      fishX = mouseX;//movement
      fishY = mouseY;
    



    if (dead == false)
      age+=1;


    if (age > maxAge)
      dead = true;

    if (weight <= int(maxWeight * .1))
      dead = true;

    if (age % 1000 == 0) {
      if (dead == false) {
        weightChange();
      }
    }
  }
}