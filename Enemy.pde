PVector v3;
class Enemy extends GameObject
{
  PShape shape;
  float radi = 50;
  float forPos =10;
  float easing = 0.01;
  float radius = 45;
  
  Enemy(float x, float y)
  {
    pos = new PVector(x,y);
    v3 = new PVector(x,y);
    v3 = pos.copy();
    create();
  }
  
  void create()
  {
    
    shape = createShape();
    //shape.setFill(color(35,209,250));
    shape.beginShape();
    shape.noFill();
    shape.stroke(35,209,250);
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
  
  float targetX, targetY;
  void update()
  {
    if (dist(PlayerPos.x, PlayerPos.y, this.pos.x, this.pos.y) < size2)
    {
      Life = 0;
    }
    else
    {
      targetX = PlayerPos.x;
      float dx = targetX - pos.x;
      pos.x += dx * easing;
    
      targetY = PlayerPos.y;
      float dy = targetY - pos.y;
      pos.y += dy * easing;
    }
    
    if (dist(GatePos.x, GatePos.y, this.pos.x, this.pos.y) < size2)
    {
      //Code to delete the enemies from the screen if they come within the radius of the gate explosion.
          Objects.remove(this);
    }
  }
  

}