public interface Tankable {
  public void show();
  public void move();
  public boolean collide(Tankable t); 
  public boolean tryToEat(Tankable t);
  public boolean isDead();
  //public boolean tapped();
  public float getX();
  public float getY();
  public float getRadius();
  public int getTank();
  public String getname();
}