class Speedster extends Enemy
{
  
  Speedster(float x, float y)
  {
    pos = new PVector(x,y);
    v3 = new PVector(x,y);
    v3 = pos.copy();
    create();
    this.speed = 1.5;
  }
  
  void create()
  {
    
    shape = createShape();
    //shape.setFill(color(35,209,250));
    shape.beginShape();
    shape.noFill();
    shape.stroke(#E500FF);
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
  
}