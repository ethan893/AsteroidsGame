class Bullet extends Floater {
  public Bullet(Spaceship bob) {
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myPointDirection = bob.getPointDirection();
    accelerate(10);
  }
  public void show() {
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
  public double getX() {
  return(myCenterX);
}
public double getY() {
  return(myCenterY);
}
}
