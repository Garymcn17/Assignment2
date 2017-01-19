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
    shape.noFill();
    shape.strokeWeight(2);
    shape.vertex(-radius, radius);
    shape.vertex(0, - radius);
    shape.vertex(radius, radius);
    shape.vertex(0, 0);
    shape.endShape(CLOSE);
  }
  
  
}