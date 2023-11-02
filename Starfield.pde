class Ball {
  int myX, myY, myWidth, myHeight, mySpeed, myColor;
  Ball() {
  myX = (int)(Math.random()*1100)-150;
  myY = (int)(Math.random()*600);
  myWidth = 20;
  myHeight = 10;
  mySpeed = 2;
  myColor = color(255,255,0);
  }
  
  
  
 void show() {
 fill(myColor);
 ellipse(myX, myY, myWidth, myHeight);
 }
  
 void move() {
 myX = myX + mySpeed;
 if(myX>950)
 myX = -150;
 }  
}

class oddBall extends Ball {
   oddBall() {
   myX = (int)(Math.random()*1100)-150;
   myY = (int)(Math.random()*500);
   myColor = color(255,0,0);
   mySpeed = 10;
   myWidth = 60;
   myHeight = 30;
   }
}

Ball[] bob = new Ball[200];
void setup() {
size(800, 600);
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
 fill(255,0,0);
 rect(700,0,100,600);
}
