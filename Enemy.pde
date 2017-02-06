PVector v3;
class Enemy extends GameObject
{
  PShape shape;
  float radi = 50;
  float forPos =10;
  float easing = 0.01;
  float radius = 45;
  
  PVector pos;
  PVector forward;
  float speed;
  float theta = 0;
  

  void render()
  {
  }

  
  float targetX, targetY;
  void update()
  {
    if (dist(PlayerPos.x, PlayerPos.y, this.pos.x, this.pos.y) < 50)
    {
      Life = 0;
    }
    else
    {
      /*
      targetX = PlayerPos.x;
      float dx = targetX - pos.x;
      pos.x += dx * easing;
    
      targetY = PlayerPos.y;
      float dy = targetY - pos.y;
      pos.y += dy * easing;
      */
    theta = atan2(PlayerPos.y - pos.y, PlayerPos.x - pos.x) + HALF_PI;
    forward = new PVector(sin(theta), -cos(theta));    
    forward.normalize();
    pos.add(PVector.mult(forward, speed));
    }
    
    if (dist(GatePos.x, GatePos.y, this.pos.x, this.pos.y) < size2)
    {
      //Code to delete the enemies from the screen if they come within the radius of the gate explosion.
          Objects.remove(this);
          score += 100;
    }
  }
  

}