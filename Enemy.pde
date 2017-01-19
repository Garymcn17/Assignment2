class Enemy
{
  PVector pos;
  PShape shape;
  float radius = 50;
  float forPos =10;
  
  float x;
  float y;
  float easing = 0.05;
  
  
  Enemy(float x, float y)
  {
    pos = new PVector(x,y);
    
    create();
  }
  
  void create()
  {
    
    shape = createShape();
    shape.setFill(color(#47E0FC));
    shape.beginShape();
    shape.stroke(255);
    shape.noFill();
    shape.strokeWeight(2);
    shape.vertex(-radius, 0);
    shape.vertex(0, - radius/2);
    shape.vertex(radius, 0);
    shape.vertex(0, + radius/2);
    shape.endShape(CLOSE);
  }
  
  void render()
  {
    pushMatrix(); // Stores the current transform
    shape(shape, width -radius - forPos, height -radius - forPos);
    popMatrix(); // Restore the transform
  }
  
  void update()
  {
    
  }
  
  
}