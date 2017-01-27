ArrayList<Gates> gates = new ArrayList<Gates>();
int gateLife = 1;

class Gates
{
  PVector GatePos;
  float radi =30;
  
  Gates(float x, float y, int radi)
  {
    GatePos = new PVector(x,y);
    
    create();
  }
  
  void create()
  {
    PShape shape = createShape(ELLIPSE, 0,0 ,50,50);
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
      fill(255,0,0);
      ellipse(GatePos.x, GatePos.y, 50,50);
    }
  }
  


  
  
}