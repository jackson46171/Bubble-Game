class Bubble {

  float x;
  float y;
  float diameter;
  float yspeed=2;
  float colorc = random(255);

  Bubble() {
    x=random(width);
    y=height;
    diameter=random(16,64);
  }


  void ascend() {
    if(score<1){
      yspeed=1;
    }
    y=y-yspeed;
    x=x+random(-2, 2);
  }


  void display() {
    stroke(0);
    fill(colorc,100,100,150);  
    ellipse(x, y, diameter, diameter);
  }

  void top() {
    if (y < 0) {
      y=height+30;
      score=score-1;
      diameter=random(16,64);
      yspeed=yspeed/1.5;
      colorc=random(255);
    }
  }

void pop1()  {
   if (mousePressed && mouseX>=x-diameter/2 && mouseX<=x+diameter/2 && mouseY>=y-diameter/2 && mouseY<=y+diameter/2)  {
    y = height+30;
    x = random(width);
    score=score+1;
    diameter=random(16,64);
    yspeed=yspeed*1.5;
    colorc=random(255);
   }
   }

}
