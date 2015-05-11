public class FishFrame extends PApplet {

  int w, h;
  int arrayPlace;


  public void setup() {
    size(w, h);

    ControlP5 cp5 = new ControlP5(this);
  }

  public PGraphics getScreen() {
    return Screens.get(whichTank);
  }


  public void draw() {

    //for (int i = 0; i <= whichTank; i++) {
      Screens.get(whichTank).beginDraw();
      colorMode(RGB);

      Screens.get(whichTank).background(20, 40, 210);
      //println("i think it's working");



      Tanks.get(whichTank).display();
      Tanks.get(whichTank).showTheStuff();
      Tanks.get(whichTank).doTheyTouch();

      if (readyL)
        Tanks.get(whichTank).MPressControlL(whatToDo);
      if (readyR)
        Tanks.get(whichTank).MPressControlR(whatToDo);


      Screens.get(whichTank).endDraw();
      this.image(Screens.get(whichTank), 0, 0);
    //}
  }


  void mousePressed() {
    //Tanks.get(0).MPressControlR(4);
  }

  void mouseDragged() {
    Tanks.get(whichTank).MDrag();
  }

  void mouseWheel(MouseEvent event) {
    Tanks.get(whichTank).MWheel(event);
  }

  void keyPressed() {
    Tanks.get(whichTank).KPress();

    if (key == 'q')
      println(Tanks.get(whichTank));

    else if (key == 'p') {
      if (running)
        running = false;
      else
        running = true;
    }
  }

  public FishFrame(int theWidth, int theHeight, int lX, int lY) {
    parent = this;
    w = theWidth;
    h = theHeight;
  }

  ControlP5 cp5;
  Object parent;
}

