public class rSnow implements Snow{
  double x;
  double y=0;
  double speed=((Math.random()*50))+2;
  
  float angle=(float)((Math.random()*90)-45);
  double size=(float)(Math.random()*10)+5;
  double ySpeed=Math.abs((float)(speed*sin(angle)));
  double xSpeed=speed*(float)(cos(angle));
  
  public rSnow(int xp){
    x=xp;
  }
  
  void move(){
    x-=xSpeed;
    y+=ySpeed;
    if(y>=height){
      y=0;
    }
    if(x<=0||x>=width){
      y=0;
      x=(float)(Math.random()*width);
    }
  }
  
  void show(){
    fill(255);
    ellipse((float)x,(float)y, (float)size, (float)size);
  }
}