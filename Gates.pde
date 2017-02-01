PVector GatePos;
float size2;
class Gates
{
  Boolean hit;
  float size = 50;
  PShape shape;
  float radi =30;
  int gateHit = 0;
 
  
  Gates(float x, float y,float size, boolean hit)
  {
    GatePos = new PVector(x,y);
    
    this.size = size;
    this.hit = false;
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

    if(this.size < 200 && this.hit == true)
      {
        this.size++;
        size2 = size;
      }
      else if( size >= 200)
      {
        
      }
  
      
    if (dist(PlayerPos.x, PlayerPos.y, GatePos.x, GatePos.y) < radi)
    {
      this.hit = true;
    }
    
  }
  
}