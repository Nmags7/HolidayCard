rSnow[] mySnow=new rSnow[100];
float theta;
PFont f;
String message="Happy Holidays!";
void setup()
{
  size(800, 600);
  for (int i=0; i< mySnow.length; i++)
  {
    mySnow[i]=new rSnow((int)Math.random()*width);
  }
  f=createFont("Arial", 20);
}
void draw()
{
  background(0);

  for (int i=0; i < mySnow.length; i++)
  {
    mySnow[i].show();
    mySnow[i].move();
  }
  
  
  
  
  
  
  frameRate(7);
  fill(0, 205, 50);
  triangle(50, 500, 350, 500, 200, 100);

  fill(137, 100, 90);  //stump
  rect(175, 500, 50, 60);  

  strokeWeight(1);

  fill(255, 236, 23);
  triangle(200, 150, 175, 100, 225, 100);
  triangle(175, 125, 225, 125, 200, 75);

  fill(random(255), random(255), random(255));
  ellipse(random(100, 300), random(440, 460), 10, 10);
  fill(random(255), random(255), random(255));
  ellipse(random(105, 295), random(415, 435), 10, 10);
  fill(random(255), random(255), random(255));
  ellipse(random(110, 290), random(390, 410), 10, 10);
  fill(random(255), random(255), random(255));
  ellipse(random(115, 285), random(365, 385), 10, 10);
  fill(random(255), random(255), random(255));
  ellipse(random(120, 280), random(340, 360), 10, 10);
  fill(random(255), random(255), random(255));

  ellipse(random(130, 270), random(315, 335), 10, 10);
  fill(random(255), random(255), random(255));

  ellipse(random(140, 260), random(290, 310), 10, 10);
  fill(random(255), random(255), random(255));

  ellipse(random(145, 255), random(265, 285), 10, 10);
  fill(random(255), random(255), random(255));
  ellipse(random(160, 240), random(240, 260), 10, 10);
  fill(random(255), random(255), random(255));
  ellipse(random(175, 225), random(215, 235), 10, 10);

  fill(random(255), random(255), random(255));
  ellipse(random(180, 220), random(175, 200), 10, 10);
  fill(random(255), random(255), random(255));
  ellipse(random(190, 210), random(150, 160), 10, 10);

  noStroke();
  fill(255);
  textFont(f);
  textSize(64);
  textAlign(CENTER);
  pushMatrix();
  translate(width/2, height/2);
  rotate (theta);
  text(message, 0, 0);
  popMatrix();
  theta-=.2;
  
}
interface Snow
{
  void move();
  void show();
}