
class Enemy
{
  PVector pos;
  PShape shape;
  float radi = 50;
  float forPos =10;
  float easing = 0.01;
  
  
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
    shape.vertex(-radi, 0);
    shape.vertex(0, - radi/2);
    shape.vertex(radi, 0);
    shape.vertex(0, + radi/2);
    shape.endShape(CLOSE);
  }
  
  void render()
  {
    pushMatrix(); // Stores the current transform
    translate(pos.x, pos.y);
    shape(shape, 0,0);
    popMatrix(); // Restore the transform
  }
  
  void update()
  {
    float targetX = PlayerPos.x;
    float dx = targetX - pos.x;
    pos.x += dx * easing;
  
    float targetY = PlayerPos.y;
    float dy = targetY - pos.y;
    pos.y += dy * easing;
    
  }
}