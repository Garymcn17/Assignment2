ArrayList<Gates> gates = new ArrayList<Gates>();
int gateLife = 1;
class Gates
{
  
  PVector pos;
  PShape shape;
  float radi = 50;
  
  Gates(float x, float y)
  {
    pos = new PVector(x,y);
    
    create();
  }
  
  void create()
  {
    
    shape = createShape();
    shape.beginShape();
    shape.stroke(35,209,250);
    shape.strokeWeight(2);
    shape.vertex(0, 0);
    shape.vertex(180,random(-180,180));
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