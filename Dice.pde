void setup()
  {
      noLoop();
      background(255);
      size(1000,500);
      textAlign(CENTER,CENTER);
      textSize(32);
  }

void draw()
  {
    fill(255);
    rect(0,0,1000,500);
    int numDots = 0;
    for (int y = 20; y < 300; y += 100){
      for (int x = 220; x < 700; x+=100){
        Die bob = new Die(x,y);
        bob.show();
        numDots+=bob.dot;
      }
    }
     System.out.println(numDots);
     text("sum of dice = " + numDots,700,300);
    }
    
  void mousePressed()
  {
    
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX, myY;
      int dot = 0;
      
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
          roll();
      }
      void roll()
      {
        dot = (int)((Math.random()*6)+1);    
      }
      void show()
      {
          fill(255,192,203);
          rect(myX,myY,50,50);
          fill(0);
          if(dot == 1){
            ellipse(myX+25,myY+25,10,10);
          } else if (dot == 2){
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+40,myY+40,10,10);
          } else if (dot == 3){
            ellipse(myX+25,myY+25,10,10);
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+40,myY+40,10,10);
          } else if (dot == 4){
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+40,myY+40,10,10);
            ellipse(myX+10,myY+40,10,10);
            ellipse(myX+40,myY+10,10,10);
          } else if (dot == 5){
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+40,myY+40,10,10);
            ellipse(myX+10,myY+40,10,10);
            ellipse(myX+40,myY+10,10,10);
            ellipse(myX+25,myY+25,10,10);
          } else if (dot == 6){
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+40,myY+40,10,10);
            ellipse(myX+10,myY+40,10,10);
            ellipse(myX+40,myY+10,10,10);
            ellipse(myX+10,myY+25,10,10);
            ellipse(myX+40,myY+25,10,10);
          }
      }
  }
