class Piranha extends Fish {

  int countF;
  int degrees;
  int xyz = int(random(1, 5));
  boolean fishChosen = false;
  Fish fishToFollow; 

  Piranha(float x, float y) {
    super();
    weight = 20;
    weightAdd = 5;
    skin = color(int(random(80, 200)), 240, 240);
    maxWeight = 50;
    maxAge = int(random(9, 11) * 1000);
    fishX = x;
    fishY = y;
    speedMax = 2;
  }

  public boolean tryToEat(Tankable t2) {
    if (t2 instanceof Goldfish) { 
      if (weight<maxWeight)
        return true;
    } 
    else if (t2 instanceof Piranha) { 
      return false;
    } 
    else if (t2 instanceof Whale) { 
      return false;
    } 
    else if (t2 instanceof Pellet) { 
      if (weight<maxWeight)
        return true;
    }
    return false;
  }

/*  void move() {



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




    if (fishChosen == false) {
      speedMax=2;
      int closestFish = 1000000;
      float closestDist = 100000000;

      if (weight < maxWeight) {
        for (int i = 0; i < Tanks.get(tankNum).shells.size(); i++) {
          if (Tanks.get(tankNum).shells.get(i) instanceof Goldfish) {
            if (this.distTo(Tanks.get(tankNum).shells.get(i)) < closestDist)
              closestDist = this.distTo(Tanks.get(tankNum).shells.get(i));
            closestFish = i;
          }
        }
      }

      if (closestFish != 1000000) {
        fishToFollow = (Fish)Tanks.get(tankNum).shells.get(closestFish);
        fishChosen = true;
      }



      if (dead == false) {
        if (time % headingMod == 0) {
          headTemp1 = heading;
          headZTemp1 = headingZ;


          headTemp2 = random(0, 360);
          headZTemp2 = random(0, 360);

          headCount = abs(headTemp1 - headTemp2)/2.5;
          turn = true;
          turnZ = true;
        }

        if (turn) {
          if (headTemp1 - headTemp2 < 0) {
            if (heading < headTemp2) {
              heading += random(0, 5);
            } 
            else {
              turn = false;
              heading = headTemp2;
            }
          } 
          else {
            if (heading > headTemp2) {
              heading -= random(0, 5);
            } 
            else {
              turn = false;
              heading = headTemp2;
            }
          }
          headCount--;
        } 
        if (turnZ) {
          if (headZTemp1 - headZTemp2 < 0) {
            if (headingZ < headZTemp2) {
              headingZ += random(0, 5);
            } 
            else {
              turnZ = false;
              headingZ = headZTemp2;
            }
          } 
          else {
            if (headingZ > headZTemp2) {
              headingZ -= random(0, 5);
            } 
            else {
              turnZ = false;
              headingZ = headZTemp2;
            }
          }
          headCount--;
        } 
        else {
          headCount = 0;
        }



        deltaX = speed * sin(radians(heading));
        deltaY = -speed * cos(radians(heading));
        deltaZ = speed * sin(radians(headingZ));
      }//reg turning
    }


    else if (fishChosen) {


      speedMax = 5;


      if (Tanks.get(tankNum).shells.contains(fishToFollow) == false)
        fishChosen = false;

      if (time % 10 == 0) {
        headTemp1 = heading;
        headZTemp1 = headingZ;


        headTemp2 = (degrees(angleToXY(fishToFollow))-90);
        headZTemp2 = (degrees(angleToXZ(fishToFollow)));

        println(heading+"  "+headTemp2+"       "+headingZ+"  "+headZTemp2);

        headCount = abs(headTemp1 - headTemp2)/2.5;
        turn = true;
        turnZ = true;
      }

      if (turn) {
        if (headTemp1 - headTemp2 < 0) {
          if (heading < headTemp2) {
            heading += random(5, 10);
          } 
          else {
            turn = false;
            heading = headTemp2;
          }
        } 
        else {
          if (heading > headTemp2) {
            heading -= random(5, 10);
          } 
          else {
            turn = false;
            heading = headTemp2;
          }
        }
        headCount--;
      } 
      if (turnZ) {
        if (headZTemp1 - headZTemp2 < 0) {
          if (headingZ < headZTemp2) {
            headingZ += random(5, 10);
          } 
          else {
            turnZ = false;
            headingZ = headZTemp2;
          }
        } 
        else {
          if (headingZ > headZTemp2) {
            headingZ -= random(5, 10);
          } 
          else {
            turnZ = false;
            headingZ = headZTemp2;
          }
        }
        headCount--;
      } 
      else {
        headCount = 0;
      }



      deltaX = speed * sin(radians(heading));
      deltaY = -speed * cos(radians(heading));
      deltaZ = speed * sin(radians(headingZ));
    }//following

    if (dead == false) {

      if (fishX+(weight/2)>Tanks.get(tankNum).getSizeX()/2) {
        heading = 270 + (90 - heading);
        fishX-=1;
      } 
      else if (fishY+(weight/2)>Tanks.get(tankNum).getSizeY()/2) {
        heading = 360 + (180 - heading);
        fishY-=1;
      } 
      else if (fishX-(weight/2)<-Tanks.get(tankNum).getSizeX()/2) {
        heading = 90 + (270 - heading);
        fishX+=1;
      } 
      else if (fishY-(weight/2)<-Tanks.get(tankNum).getSizeY()/2) {
        heading = 180 - heading;
        fishY+=1;
      } 
      else if (fishZ+(weight/2)>Tanks.get(tankNum).getSizeZ()/2) {
        headingZ = 270 + (90 - headingZ);
        fishZ-=1;
      } 
      else if (fishZ-(weight/2)<-Tanks.get(tankNum).getSizeZ()/2) {
        headingZ = 90 + (270 - headingZ);
        fishZ+=1;
      }

      deltaX = speed * sin(radians(heading));
      deltaY = -speed * cos(radians(heading));
      deltaZ = speed * sin(radians(headingZ));

      fishX+=deltaX;//movement
      fishY+=deltaY;
      fishZ+=deltaZ;
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
  }*/
}