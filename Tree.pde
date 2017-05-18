class Tree extends GameObject
{
  float cx;
  float cy;
  float size;
  float speed = 0;
  
  float gravity = 1;
  float destY = -1;
  boolean falling = false;
  
 Tree(float x, float y)
  {
    super(x, y, 0, 10);
    destY = random(height / 2, height * 0.9f);
    falling = true;
  }
  
  void update()
  {
     if (falling)
     {
       speed += gravity;
       pos.y += speed;
       pos.x += 3;
       if (pos.y > destY)
       {
         falling = false;
       }
     }
  }
  
  void render()
  {
    pushMatrix();
    stroke(255, 0, 0);
    fill(255, 0, 0);
    translate(pos.x, pos.y);
    rect(-5, -5, 10, 10);
    popMatrix();
  }
}