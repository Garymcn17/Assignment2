ArrayList<Gates> gates = new ArrayList<Gates>();
class Gates
{
  float size = 50;
  PVector GatePos;
  PShape shape;
  float radi =30;
  int gateHit = 0;
  
  Gates(float x, float y, int gateHit)
  {
    GatePos = new PVector(x,y);
    this.gateHit = gateHit;
    
    create();
  }
  
  void create()
  {
    shape = createShape(ELLIPSE, 0,0 ,size,size);
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
    
    if (dist(PlayerPos.x, PlayerPos.y, this.GatePos.x, this.GatePos.y) < radi)
    {

      gates.remove(this);
    }

  }
  


  
  
}