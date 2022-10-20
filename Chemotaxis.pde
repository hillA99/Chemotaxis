Walker rick;
Walker [] hillbillies = {new Walker(), new Walker(), new Walker()};
Walker [] saviors;

void setup() {
  size(800, 800);
  textAlign(CENTER,CENTER);
  rick = new Walker();
  saviors = new Walker[50];
  int i = 0;
  while (i < saviors.length) {
    saviors [i] = new Walker();  
    i++;
  }
}
void draw() {
  {
    background(64);
    rick.walk();
    rick.show();
    hillbillies[0].walk();
    hillbillies[0].show();
    hillbillies[1].walk();
    hillbillies[1].show();
    hillbillies[2].walk();
    hillbillies[2].show();
    for(int i = 0; i < saviors.length; i++) {
      saviors[i].walk();
      saviors[i].show();
    if(get(mouseX,mouseY) != color(64))
    fill(255,0,0);
    textSize(50);
    text("run for your life!",400,100);
    }
  }
}
class Walker
  {
    int myX, myY;
    int myColor;
    Walker(){
      myX = myY = 400;
      myColor = color(#927A2B);
    }
    void walk(){
      myX = myX + (int)(Math.random()*7)-3;
      //{-3,-2,-1,0,1,2,3)
      myY = myY + (int)(Math.random()*7)-3;
      if(mouseX > myX)
        myX = myX + (int)(Math.random()*5)-1;
      else
        myX = myX + (int)(Math.random()*5)-3;
      if(mouseY > myY)
        myY = myY + (int)(Math.random()*5)-1;
      else
        myY = myY + (int)(Math.random()*5)-3; 
    }
    void show(){
      {
        stroke(5);
        strokeWeight(3);
        fill(myColor);
        rect(myX,myY,50,60);
        rect(myX+30,myY+60,20,40);
        rect(myX,myY+60,20,40);
        fill(#8CEC9F);
        ellipse(myX+25,myY-20,60,55);
        rect(myX-20,myY,20,60); 
        rect(myX+50,myY,20,60);
        fill(#E63232);
        ellipse(myX+25,myY-10,35,15);
        fill(#EFDFDF);
        ellipse(myX+15,myY-30,20,20);
        ellipse(myX+35,myY-30,20,20);
        fill(0);
        ellipse(myX+15,myY-30,10,10);
        ellipse(myX+35,myY-30,10,10);
      }
    }
  }
