ArrayList<Gates> gates = new ArrayList<Gates>();
int gateLife = 1;
PVector GatePos;
class Gates
{
  PShape shape;
  float radi =5;
  
  Gates(float x, float y, int radi)
  {
    GatePos = new PVector(x,y);
    
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
      translate(GatePos.x, GatePos.y);
      shape(shape, 0,0);
      popMatrix(); // Restore the transform
  }
  
  void update()
  {
    if (dist(PlayerPos.x, PlayerPos.y, this.GatePos.x, this.GatePos.y) < radius)
    {
      Life = 0;
    }
  }
  


  
  
}