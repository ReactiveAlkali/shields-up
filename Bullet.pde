class Bullet extends Entity {
  float bDiameter;//works as both width and height for entity class
  boolean isAlive = true;//can be in entity
  int speed = 5;//reaches end of screen in half second, may need balancing, for now only moves rigth to left

  public Bullet(int startX, int startY) {
    bDiameter = 20;
    circle(startX, startY, bDiameter);//last value size, adjust to make it look good

    this.x = startX;
    this.y = startY;
  }

  void update()
  {
    x -= speed;

    if (y < - bDiameter)
    {
      isAlive = false;
    }
    draw();
  }
  
  void draw()//can be put into entity class
  {
    if(isAlive)
    {
      pushMatrix();
      
      translate(x, y);
      circle(-bDiameter/2, -bDiameter/2, bDiameter);
      
      popMatrix();
    }
  }
}
