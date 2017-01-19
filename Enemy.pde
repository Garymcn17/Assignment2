class Enemy
{
  PVector pos;
  PShape shape;
  float radius = 100;
  
  
  Enemy(float x, float y)
  {
    pos = new PVector(x,y);
    
    create();
  }
  
  void create()
  {
    shape = createShape();
    shape.beginShape();
    shape.stroke(255);
    shape.setFill(color(#47E0FC));
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
    shape(shape, 0, 0);
    popMatrix(); // Restore the transform
  }
  
  
}