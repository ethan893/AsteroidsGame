Star [] a = new Star[200];
Spaceship bob = new Spaceship();
boolean w,e,s,d;
public void setup()
{
 size(1000,1000);
 for(int i = 0; i < 200; i++) {
   a[i] = new Star ();
 }
}
public void draw()
{
  bob.show();
 background(255);
 for(int i = 0; i < a.length; i++) {
   a[i].show();
 }
   bob.show();
   bob.move();
   if(w == true) {
     bob.accelerate(.5);
   }
   if(s == true) {
    bob.accelerate(-.5);
   }
   if(e == true) {
     bob.turn(-25);
   }
   if(d == true) {
     bob.turn(25);
   }
}
 public void keyPressed() {
    if (key == 'h') {
      bob.setCenterX((int)(Math.random()*1001));
      bob.setCenterY((int)(Math.random()*1001));
 bob.setXspeed(0);
      bob.setYspeed(0);
      bob.setPointDirection((int)(Math.random()*360));
    }
    if(key == 'w')
      w = true;
    if(key == 's') 
      s = true;
    if(key == 'a') 
      e = true;
    if(key == 'd') 
      d = true;
 }
 public void keyReleased() {
   if(key == 'w')
      w = false;
    if(key == 's') 
      s = false;
    if(key == 'a') 
      e = false;
    if(key == 'd') 
      d = false;
 }
