public class Tank {



  protected int whichFish = 1000;

  protected ArrayList<Tankable> shells;

  protected int totalAmmonia, placeInArrayList;
  protected String name;
  protected float rotX, rotY;
  protected float transX, transY, sizeX, sizeY;


  public Tank(String s, int place, int A, float x, float y, PApplet pa) {
    shells = new ArrayList<Tankable>();
    name = s;
    placeInArrayList = place;
    totalAmmonia = A;
    rotX = 0;
    rotY = 0;
    transX = 0;
    transY = 0;
    sizeX = x;
    sizeY = y;
  }

  public int getSpot() {
    return  placeInArrayList;
  }

  public float getSizeX() {
    return sizeX;
  }

  public float getSizeY() {
    return sizeY;
  }

  public ArrayList getShells() {
    return shells;
  }

  public void addToShells(Tankable t1) {
    shells.add(t1);
  }

  public void removeFromShells(Tankable t1) {
    shells.remove(t1);
  }

  public String toString() {
    int f = 0;
    int p = 0;
    int w = 0;
    int l = 0;
    int oth = 0;
    for (Tankable t : shells) {
      if (t instanceof Fish)
        f++;
      if (t instanceof Piranha)
        p++;
      else if (t instanceof Whale)
        w++;
      else if (t instanceof Lil_T)
        l++;
      else
        oth++;
    }
    String out = name+", "+shells.size()+" Objects\n" + f + " Fish, " + p + " Piranhas, " + w + " Whales, " + l + " Torodialfins, and " + oth + " Other Objects";
    return out;
  }



  public void showTheStuff() {
    for (Tankable t : shells) {
      t.show();
      if (running)
        t.move();
    }

    for (Tankable t : shells) {
      if (t instanceof Fish) {
        if (((Fish)t).addAir())
          break;
      }
    }
  }

  public void doTheyTouch() {
    for (int m = 0; m < 3; m++) {
      for (int i = 0; i < shells.size (); i++) {
        Tankable t1 = shells.get(i);
        for (int j = 0; j < shells.size (); j++) {
          Tankable t2 = shells.get(j);

          if (t1 != t2) {
            if (t1 instanceof Fish && t2 instanceof Fish) {
              //((Fish)t1).lineTo(((Fish)t2));
              //((Fish)t1).angleTo(((Fish)t2));
            }
            if (t1.collide(t2)) {


              if (m == 0) {
                if (t1 instanceof Whale) {
                  if (t1.tryToEat(t2)) {
                    if (t2 instanceof Red_Food) {
                      Tanks.get(0).removeFromShells(t2);
                      ((Fish)t1).antiWeightChange();
                    } else if (t2 instanceof Bubble) {
                      Tanks.get(0).removeFromShells(t2);
                    } else {
                      Tanks.get(0).removeFromShells(t2);
                      ((Fish)t1).weightChange();
                    }
                    j--;
                  }



                  //Dont move


                  else if (t2 instanceof Fish) {
                    ((Fish)t1).otherWay();
                    ((Fish)t2).otherWay();
                    if (random(0, 1) < .0002) {
                      if (t2 instanceof Whale)
                        Tanks.get(0).placeSomething(2);
                    }
                  }
                }
              } else if (m == 1) {
                if (t1 instanceof Piranha) {
                  if (t1.tryToEat(t2)) {
                    if (t2 instanceof Red_Food) {
                      Tanks.get(0).removeFromShells(t2);
                      ((Fish)t1).antiWeightChange();
                    } else if (t2 instanceof Bubble) {
                      Tanks.get(0).removeFromShells(t2);
                    } else {
                      Tanks.get(0).removeFromShells(t2);
                      ((Fish)t1).weightChange();
                    }
                    j--;
                  }



                  //Dont move


                  else if (t2 instanceof Fish) {
                    ((Fish)t1).otherWay();
                    ((Fish)t2).otherWay();
                    if (random(0, 1) < .0002) {
                      if (t2 instanceof Piranha)
                        Tanks.get(0).placeSomething(1);
                    }
                  }
                }
              } else {
                if (t1 instanceof Goldfish) {
                  if (t1.tryToEat(t2)) {
                    if (t2 instanceof Red_Food) {
                      Tanks.get(0).removeFromShells(t2);
                      ((Fish)t1).antiWeightChange();
                    } else if (t2 instanceof Bubble) {
                      Tanks.get(0).removeFromShells(t2);
                    } else {
                      Tanks.get(0).removeFromShells(t2);
                      ((Fish)t1).weightChange();
                    }
                    j--;
                  }



                  //Dont move


                  else if (t2 instanceof Fish) {
                    ((Fish)t1).otherWay();
                    ((Fish)t2).otherWay();
                    if (random(0, 1) < .0002) {
                      if (t2 instanceof Lil_T);
                      else if (t2 instanceof Goldfish)
                        Tanks.get(0).placeSomething(0);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  public void placeSomething(int type) {

    float w = 0;
    boolean ok = false;

    if (type == 0) w = 15; 
    else if (type == 1) w = 20; 
    else if (type == 2) w = 30; 
    else if (type == 3) w = 15; 
    else if (type == 4) w = 2;

    float a =  random(-sizeX+(w+2), sizeX-(w+2));
    float b =  random(-sizeY+(w+2), sizeY-(w+2)); 

   /* if (shells.size() > 0) {
      while (ok == false) {
        for (int i = 0; i < shells.size (); i++) {
          Tankable t2 = shells.get(i);
          if (sqrt((a-t2.getX())*(a-t2.getX())
            +(b-t2.getY())*(b-t2.getY())) <= w/2 + t2.getRadius()) {
            a =  random(-sizeX/2+(w+2), sizeX/2-(w+2));
            b =  random(-sizeY/2+(w+2), sizeY/2-(w+2)); 
            break;
          } else if (i == shells.size()-1) {
            ok = true;
            break;
          }
        }
      }
    }*/

    if (type == 0) {
      colorMode(HSB);
      shells.add(new Goldfish(a, b, whichTank));
      colorMode(RGB);
    } else if (type == 1) {
      colorMode(HSB);
      shells.add(new Piranha(a, b));
      colorMode(RGB);
    } else if (type == 2) {
      colorMode(HSB);
      shells.add(new Whale(a, b));
      colorMode(RGB);
    } else if (type == 3) {
      colorMode(HSB);
      shells.add(new Lil_T(a, b, whichTank));
      colorMode(RGB);
    } else if (type == 4) {
      shells.add(new Food(a, b, 1, 2, whichTank));
    } else if (type == 4) {
      shells.add(new Red_Food(a, b, 2, 2, whichTank));
    }
  }

  public void display() {
    Frames.get(whichTank).getScreen().translate(sizeX, sizeY);
  }



  public void MPressControlL(int whichFish) {
    println(whichFish);


    if (whichFish == 4) {
      Tanks.get(placeInArrayList).placeSomething(0);

      whichFish = 1000;
    }//Goldfish

    if (whichFish == 5) {
      Tanks.get(placeInArrayList).placeSomething(1);


      whichFish = 1000;
    }//Piranha

    if (whichFish == 6) {
      Tanks.get(placeInArrayList).placeSomething(2);

      whichFish = 1000;
    }//Whale

    if (whichFish == 7) {
      Tanks.get(placeInArrayList).placeSomething(3);

      whichFish = 1000;
    }//Lil T

    if (whichFish == 0) {
      for (int i = 0; i<100; i++) {
        Tanks.get(placeInArrayList).placeSomething(4);
      }

      whichFish = 1000;
    }//food 

    if (whichFish == 1) {
      for (int i = 0; i<100; i++) {
        Tanks.get(placeInArrayList).placeSomething(5);
      }

      whichFish = 1000;
    }//poison
    readyL = false;
  }


  public void MPressControlR(int whichFish) {
    println(whichFish);
    //whichFish = dashboard.CP5MPress();

    /* if ((mouseX - 700)*(mouseX - 700) + (mouseY - 175)*(mouseY - 175) < 2500) {
     tap = true;
     tapS = true;
     } 
     else if ((mouseX - 700)*(mouseX - 700) + (mouseY - 415)*(mouseY - 415) < 2500) {
     
     
     totalAmmonia = 0;
     
     for (int i = 0; i < fishTank.size (); i++) {
     Fish n = fishTank.get(i);
     n.ammonia = 0;
     }
     } */

    if (whichFish == 4) {
      colorMode(HSB);
      for (int i = 0; i<10; i++) {
        Tanks.get(placeInArrayList).placeSomething(0);
      }
      colorMode(RGB);
      whichFish = 1000;
    }//Goldfish

    if (whichFish == 5) {

      colorMode(HSB);
      for (int i = 0; i<10; i++) {
        Tanks.get(placeInArrayList).placeSomething(1);
      }
      colorMode(RGB);

      whichFish = 1000;
    }//Piranha

    if (whichFish == 6) {

      colorMode(HSB);
      for (int i = 0; i<10; i++) {
        Tanks.get(placeInArrayList).placeSomething(2);
      }
      colorMode(RGB);

      whichFish = 1000;
    }//Whale

    if (whichFish == 7) {


      colorMode(HSB);
      for (int i = 0; i<10; i++) {
        Tanks.get(placeInArrayList).placeSomething(3);
      }
      colorMode(RGB);

      whichFish = 1000;
    }//Lil T

    if (whichFish == 0) {

      for (int i = 0; i < shells.size (); i++) {
        if (shells.get(i) instanceof Food) {
          shells.remove(i);
          i = 0;
        }
      }

      if (shells.get(0) instanceof Food) 
        shells.remove(0);

      whichFish = 1000;
    }//food 

    if (whichFish == 1) {

      for (int i = 0; i < shells.size (); i++) {
        if (shells.get(i) instanceof Red_Food) {
          shells.remove(i);
          i = 0;
        }
      }

      if (shells.get(0) instanceof Red_Food) 
        shells.remove(0);

      whichFish = 1000;
    }//poison
    readyR = false;
  }




  public void MDrag() {
    if (mouseButton == LEFT) {
      rotY+=(mouseX-pmouseX);
      rotX-=(mouseY-pmouseY);
    } 
    if (mouseButton == RIGHT) {
      transX+=(mouseX-pmouseX);
      transY+=(mouseY-pmouseY);
    }
  }

  public void MWheel(MouseEvent event) {
    float a = event.getCount();
    if (a >= 0) {
      //transZ-=10;
    } else {
      // transZ+=10;
    }
  }

  public void KPress() {
    /* if (key == 'c') {
     cam = true;
     fol = false;
     } 
     else if (key == 'f') {
     fol = true;
     cam = false;
     } 
     else if (key == 'u') {
     cam = false;
     fol = false;
     camera();
     } 
     else if (key == 's') {
     if (cam || fol)
     num++;
     }*/
  }
}

