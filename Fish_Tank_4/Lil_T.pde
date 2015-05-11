class Lil_T extends Goldfish {

  int xyz = int(random(5));

  Lil_T(float x, float y, int place) {
    super();
    skin = color(255, 0);
    tankNum = place;
    fishX = x;
    fishY = y;
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




    if (dead == false) {
      if (time % headingMod == 0) {
        headTemp1 = heading;


        headTemp2 = random(0, 360);

        headCount = abs(headTemp1 - headTemp2)/2.5;
        turn = true;
      }

      if (turn) {
        if (headTemp1 - headTemp2 < 0) {
          if (heading < headTemp2) {
            heading += random(0, 5);
          } else {
            turn = false;
            heading = headTemp2;
          }
        } else {
          if (heading > headTemp2) {
            heading -= random(0, 5);
          } else {
            turn = false;
            heading = headTemp2;
          }
        }
        headCount--;
      } 
     else {
        headCount = 0;
      }



      deltaX = speed * sin(radians(heading));
      deltaY = -speed * cos(radians(heading));
    }

    if (dead == false) {

      if (fishX-(weight)>Tanks.get(tankNum).getSizeX()) {
        fishX-=Tanks.get(tankNum).getSizeX();
      } 
      else if (fishY-(weight)>Tanks.get(tankNum).getSizeY()) {
        fishY-=Tanks.get(tankNum).getSizeY();
      } 
      else if (fishX+(weight)<-Tanks.get(tankNum).getSizeX()) {
        fishX+=Tanks.get(tankNum).getSizeX();
      } 
      else if (fishY+(weight)<-Tanks.get(tankNum).getSizeY()) {
        fishY+=Tanks.get(tankNum).getSizeY();
      } 

      deltaX = speed * sin(radians(heading));
      deltaY = -speed * cos(radians(heading));

      fishX+=deltaX;//movement
      fishY+=deltaY;
    }



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
