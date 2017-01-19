class Player
{
  PVector pos;
  PVector forward;
  PVector velocity;
  PVector accel;
  PVector force;
  float power = 100;
  float theta;
  float size;
  float radius;
  float mass = 1;
  PShape shape;
  char up, down, left,right;
  
  Player(float x, float y, float theta, float size)
  {
    pos = new PVector(x, y);
    forward = new PVector(0, -1);
    accel = new PVector(0,0);
    velocity = new PVector(0,0);
    force = new PVector(0, 0);
    this.theta = theta;
    this.size = size;
    radius = size / 2;
    //this.up = UP;
    //this.down = DOWN;
    //this.left = LEFT;
    //this.right =RIGHT;
    
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
  
    
  void render()
  {
    pushMatrix(); // Stores the current transform
    translate(pos.x, pos.y);
    rotate(theta);    
    shape(shape, 0, 0);
    popMatrix(); // Restore the transform
  }
  
  void update()
  {
      
    forward.x = sin(theta);
    forward.y  = -cos(theta);
    if (checkKey('w'))
    {
      force.add(PVector.mult(forward, power));      
    }
    if (checkKey('s'))
    {
      force.add(PVector.mult(forward, -power));      
    }
    if (checkKey('a'))
    {
      theta -= 0.1f;
    }
    if (checkKey('d'))
    {
      theta += 0.1f;
    }
    
    accel = PVector.div(force, mass);
    velocity.add(PVector.mult(accel, timeDelta));
    pos.add(PVector.mult(velocity, timeDelta));
    force.x = force.y = 0;
    velocity.mult(0.99f);
    
  
  }
  
}