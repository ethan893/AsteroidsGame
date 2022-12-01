class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid() {
    corners = 6;
    xCorners = new int[] {-11,7,13,6,-11,-5};
    yCorners = new int[] {-8,-8,0,10,8,0};
    myCenterX = (int)(Math.random()*1001);
    myCenterY = (int)(Math.random()*1001);
    myColor = color(0,0,255);
    myXspeed = (int)(Math.random()*4)-2;
    myYspeed = (int)(Math.random()*4)-2;
    myPointDirection = degrees((int)(Math.random()*360));
    rotSpeed = (int)(Math.random()*2)-1;
  }
  public void move()
  {
    turn(rotSpeed);
   super.move();
   if(myCenterX > width) {
     myCenterX = myCenterY = 0;
   }
  }
  public double getXspeed() {
    return myXspeed;
  }
  public double getYspeed() {
    return myYspeed;
  }
  public double getX() {
  return(myCenterX);
}
public double getY() {
  return(myCenterY);
}
}
