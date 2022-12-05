Star [] a = new Star[200];
Spaceship bob = new Spaceship();
ArrayList <Asteroid> b = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet> ();
Asteroid c = new Asteroid();
Asteroid g = new Asteroid();
Asteroid f = new Asteroid();
Asteroid h = new Asteroid();
Asteroid p = new Asteroid();
boolean w,e,s,d,r;
public void setup()
{
 size(1000,1000);
 b.add(c);
 b.add(g);
 b.add(f);
 b.add(h);
 b.add(p);
 for(int i = 0; i < 200; i++) {
   a[i] = new Star ();
 }
}
public void draw()
{
 background(255);
 for(int p = 0; p < shots.size(); p++)  {
    shots.get(p).show();
    shots.get(p).move();
 }
  for(int a = 0; a < shots.size(); a++) {
    for(int c = 0; c < b.size(); c++) {
    if(dist((float)shots.get(a).getX(),(float)shots.get(a).getY(), (float)b.get(c).getX(), (float)b.get(c).getY()) < 10) {
      shots.remove(a);
      b.remove(c);
   break;
    }
 }
  }
 for(int j = 0; j < b.size(); j++) {
   b.get(j).move();
   b.get(j).show();
   float q = dist((float)bob.getX(),(float)bob.getY(), (float)b.get(j).getX(),(float)b.get(j).getY());
   if(q < 10)
   b.remove(j);
 }
 for(int i = 0; i < a.length; i++) {
   a[i].show();
 }
   bob.show();
   bob.move();
   if(w == true) {
     bob.accelerate(.2);
   }
   if(s == true) {
    bob.accelerate(-.2);
   }
   if(e == true) {
     bob.turn(-25);
   }
   if(d == true) {
     bob.turn(25);
   }
   if(r == true) {
     shots.add(new Bullet(bob));
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
    else if(key == 's') 
      s = true;
    else if(key == 'a') 
      e = true;
    else if(key == 'd') 
      d = true;
      else if(key == ' ') 
      r = true;
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
