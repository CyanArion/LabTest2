void setup()
{
  size(500, 500);
 
    
     for(int i = 0 ; i < 5; i ++)
  {
    gameObjects.add(new Cloud());  
  }
  

 
}


  float bx = 20;
  float by = 40;
  float size = 20;
  float speed = 3;
  float radius;
  
  float cx = 200;
  float cy = 430;
  
  int value = 0;

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

  
void draw()
{
  background(102, 255, 255);
  noStroke();
  fill(178, 255, 102);
  rect(0, height / 2, width, height);
  
  stroke(0, 255, 255);
  fill(0, 255, 255);
  rect(0, 0, width  , height / 2);
 
  
  for(int i = gameObjects.size() - 1 ; i >= 0  ; i --)
  {
    GameObject go = gameObjects.get(i);
    go.update();
    go.render();
  }  
  
   fill(255, 0, 0);
   
   if (mousePressed == true) 
   {
    ellipse(bx, by, size, size);
    ellipse(bx + 10, by, size - 5, size - 5);
   }
   
   if (mousePressed == false)
   {
    ellipse(bx, by + 40, size, size);
    ellipse(bx + 10, by + 40, size - 5, size - 5);
   }
   
   bx += speed;
   
   if (bx > width)
   {
    bx = 0; 
   }
   
   
   if (mousePressed == true && (height < 250))
   {
     translate(0, 0);
     fill(0);
    ellipse(mouseX, mouseY, 30, 30); 
   }
}



void keyPressed() 
{
  if(key==' ')exit();
  if(key=='s')saveFrame("###.jpeg");
}