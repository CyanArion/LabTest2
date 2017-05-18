class Tree extends GameObject
{
  float cx;
  float cy;
  float size;
  float speed = 0;
  
  float gravity = 1;
  float destY = -1;
  
 Tree(float x, float y)
  {
    super(x, y, 0, 10);
    destY = random(height / 2, height * 0.9f);
  }
  
  void update()
  {
     if (mousePressed)
     {
       speed += gravity;
       pos.y += speed;
       pos.x += 3;
     }
  }
  
  void render()
  {
    pushMatrix();
    stroke(255, 0, 0);
    fill(255, 0, 0);
    translate(pos.x, pos.y);
    ellipse(-5, -5, 10, 10);
    popMatrix();
  }
}
