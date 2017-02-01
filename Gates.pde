ArrayList<Gates> gates = new ArrayList<Gates>();
PVector v2;
float size2;
 Boolean hit, hit1 = false;
class Gates
{
  float size = 50;
  PVector GatePos;
  PShape shape;
  float radi =30;
  int gateHit = 0;
 
  
  Gates(float x, float y,float size)
  {
    GatePos = new PVector(x,y);
    v2 = new PVector(x,y);
    v2 = GatePos.copy();
    this.size = size;
    //create();
  }
  
 /* void create()
  {
    //shape = createShape(ELLIPSE, 0,0 ,size,size);
  }
 */
  void render()
  {
      pushMatrix(); // Stores the current transform
      translate(GatePos.x, GatePos.y);
      //shape(shape, 0,0);
      ellipse(0,0,size,size);
      popMatrix(); // Restore the transform
  }
  
  void update()
  {
    if(size < 200 && hit1 == true)
      {
        size++;
        size2++;
      }
      else if( size >= 200)
      {
        gates.remove(this);
      }
      
    if (dist(PlayerPos.x, PlayerPos.y, this.GatePos.x, this.GatePos.y) < radi)
    {
      hit = true;
      hit1 = true;
    }
    else
    {
      hit = false; 
    }
  }
  
}