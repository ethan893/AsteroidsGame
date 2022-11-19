class Spaceship extends Floater  
{   
 public Spaceship () {
    corners = 4;
    xCorners = new int[] {-8,16,-8,-2};
    yCorners = new int[] {-8,0,8,0};
    myCenterX = myCenterY = 500;
    myXspeed = myYspeed = 0;
    myPointDirection = degrees(25);
    myColor = color(0);
 }
  public void setCenterX (int dNum) {
    myCenterX = dNum;
  }
  public void setCenterY (int dNum) {
    myCenterY = dNum;
  }
  public void setXspeed (int dNum) {
    myXspeed = dNum;
  }
  public void setYspeed (int dNum) {
    myYspeed = dNum;
  }
  public void setPointDirection (int dNum) {
    myPointDirection = dNum;
  }
  }
