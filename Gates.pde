PVector GatePos;
float size2;
class Gates extends GameObject
{
  Boolean hit = false;
  float size = 50;
  PShape shape;
  float radi =30;
  int gateHit = 0;
 
  
  Gates(float x, float y,float size)
  {
    GatePos = new PVector(x,y);
    
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

    if(size < 200 && hit == true)
      {
        size++;
        size2 = size;
      }
      else if( size > 200)
      {
        Objects.remove(gate);
        hit = false;
        size = 50;
      }
  
      
    if (dist( GatePos.x, GatePos.y, PlayerPos.x, PlayerPos.y) < radi)
    {
      hit = true;
    }
    
  }
  
}