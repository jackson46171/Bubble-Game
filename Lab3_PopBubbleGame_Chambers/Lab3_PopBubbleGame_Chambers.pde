//gamestart screen boolean starts at false
boolean gameStart=false;

//objects for bubble
Bubble b1;
Bubble b2;
Bubble b3;
Bubble b4;
Bubble b5;
int score=0;
float blue;
float red;
float bgcolor=0;


void setup() {
  size(800, 1000);
  
  rectMode(CENTER);
  
  textAlign(CENTER);
 
  b1=new Bubble();

  b2=new Bubble();

  b3=new Bubble();

  b4=new Bubble();
  
  b5=new Bubble();
}

void draw() {
  
  background(255);
  
  //start button
  fill(0,255,blue,100);
  rect(width/2,height/2.5,300,100);
  fill(0);
  textSize(40);
  text("Begin Popping" ,width/2,height/2.4);
  
  //exit button
  fill(255,0,red,100);
  rect(width/2,height/1.7,300,100);
  fill(0);
  textSize(40);
  text("Exit Game" ,width/2,height/1.65);
  
  //Instructions
  textSize(35);
  text("Click on the bubbles to pop them!",width/2,height/1.2);
  text("Don't let them reach the top of the screen!",width/2,height/1.1);

  if (mouseX>250 && mouseX<550 && mouseY>350 && mouseY<450) {
    blue=0;
  }
  else {
    blue=255;
  }
  
  if (mouseX>250 && mouseX<550 && mouseY>538.2 && mouseY<638.2) {
    red=0;
  }
  else {
    red=255;
  }
    if (mouseX>250 && mouseX<550 && mouseY>538.2 && mouseY<638.2 && mousePressed && gameStart==false) {
    exit();
  }

fill(0);
textSize(80);
text("Pop The Bubbles!" ,width/2,height/4);
  
  if (gameStart) {
  
  bgcolor=score*20;  
    
  background(255,0,bgcolor);
  b1.display();
  b1.ascend();
  b1.top();
  b1.pop1();

  b2.display();
  b2.ascend();
  b2.top();
  b2.pop1();

  b3.display();
  b3.ascend();
  b3.top();
  b3.pop1();

  b4.display();
  b4.ascend();
  b4.top();
  b4.pop1();
  
  b5.display();
  b5.ascend();
  b5.top();
  b5.pop1();
  fill(0);
  textSize(40);
  text("Score: " + score, width/10, height/10);
  }
}

void mousePressed() {
  if (mouseX>250 && mouseX<550 && mouseY>350 && mouseY<450 && mousePressed) {
  gameStart = true;
    }
}
