import java.awt.Frame;
import java.awt.BorderLayout;
import java.util.*;
import controlP5.*;

ArrayList<Tank> Tanks = new ArrayList<Tank>();
ArrayList<PGraphics> Screens = new ArrayList<PGraphics>();
ArrayList<FishFrame> Frames = new ArrayList<FishFrame>();


int whichTank = -1;

int w, h;

boolean running = true;
boolean readyR = false;
boolean readyL = false;

int whatToDo = 0;



void setup() {
  size(300, 600);
  w=width;
  h=height;
  cp5 = new ControlP5(this);

  cp5.addButton("Feed_The_Fish")
    .setValue(0)
      .setPosition(150, 20)
        .setSize(100, 50)
          ;

  cp5.addButton("Poison_The_Fish")
    .setValue(0)
      .setPosition(150, 90)
        .setSize(100, 50)
          ;

  cp5.addButton("Tap_The_Tank")
    .setValue(0)
      .setPosition(150, 160)
        .setSize(100, 50)
          ;

  cp5.addButton("Clean_The_Tank")
    .setValue(0)
      .setPosition(150, 230)
        .setSize(100, 50)
          ;

  cp5.addButton("Goldfish")
    .setValue(0)
      .setPosition(20, 440)
        .setSize(100, 50)
          ;

  cp5.addButton("Piranha")
    .setValue(0)
      .setPosition(20, 500)
        .setSize(100, 50)
          ;

  cp5.addButton("Whale")
    .setValue(0)
      .setPosition(150, 440)
        .setSize(100, 50)
          ;

  cp5.addButton("Toroidalfin")
    .setValue(0)
      .setPosition(150, 500)
        .setSize(100, 50)
          ;

  cp5.addButton("Add_Tank")
    .setValue(0)
      .setPosition(20, 20)
        .setSize(100, 50)
          ;
}

void draw() {
  background(160);
}

public void Feed_The_Fish() {
  whatToDo = 0;
}

public void Poison_The_Fish() {
  whatToDo = 1;
}

public void Tap_The_Tank() {
  whatToDo = 2;
}

public void Clean_The_Tank() {
  whatToDo = 3;
}

public void Goldfish() {
  whatToDo = 4;
}

public void Piranha() {
  whatToDo = 5;
}

public void Whale() {
  whatToDo = 6;
}

public void Toroidalfin() {
  whatToDo = 7;
}

public void Add_Tank() {
  whatToDo = 8;
  Screens.add(createGraphics(800, 800));
  Frames.add(addFishFrame("Fish", 800, 800, 50, 200));
  whichTank++;
  Tanks.add(new Tank("Tank_1", 0, 0, 400, 400, Frames.get(whichTank)));
  
  println("tank made" + "    #"+whichTank);
}

FishFrame addFishFrame(String theName, int theWidth, int theHeight, int lX, int lY) {
  Frame f = new Frame(theName);
  FishFrame p = new FishFrame(theWidth, theHeight, lX, lY);
  f.add(p);
  p.init();
  f.setTitle(theName);
  f.setSize(p.w, p.h);
  f.setLocation(lX, lY);
  f.setResizable(true);
  f.setVisible(true);
  return p;
}


void mouseClicked() {
  if (mouseButton == LEFT)
    readyL = true;
  else if (mouseButton == RIGHT)
    readyR = true;
}


public void controlEvent(ControlEvent theEvent) {
  println(theEvent.getController().getName() + "   " +  whatToDo);
}


public ControlP5 control() {
  return cp5;
}


public int CP5MPress() {
  return whatToDo;
}



ControlP5 cp5;
Object parent;

