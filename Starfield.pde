class Ball {
  int myWidth, myHeight, myColor;
  double myX, myY, mySpeed, myAngle;
  Ball() {
  myX = (Math.random()*1000);
  myY = (Math.random()*1000);
  myWidth = 30;
  myHeight = 20;
  mySpeed = (Math.random()*20)-10;
  myAngle = (Math.random()*2*Math.PI);
  myColor = color(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
  }
  
  
  
 void show() {
 fill(myColor);
 ellipse((float)myX, (float)myY, myWidth, myHeight);
 }
  
 void move() {
 myX = myX + mySpeed;
 if(myX>950)
 myX = -150;
 }  
}

class oddBall extends Ball {
   oddBall() {
   myX = (Math.random()*1000);
   myY = (Math.random()*1000);
   myColor = color(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
   mySpeed = (Math.random()*10)+10;
   myWidth = 100;
   myHeight = 80;
   }
}

Ball[] bob = new Ball[500];
void setup() {
size(1000, 1000);
for(int i = 0; i < bob.length; i++){
bob[i] = new Ball();
bob[0] = new oddBall();
bob[1] = new oddBall();
bob[2] = new oddBall();
  }
}

void draw() {
background(0);
for(int i = 0; i < bob.length; i++){
bob[i].show();
bob[i].move();
  }
}
