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
       size = 50;
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
      stroke(#0DBEFC,255);
      ellipse(0,0,size,size);
      popMatrix(); // Restore the transform
  }
  
  void update()
  {
    if(this.size < 200 && hit == true)
    {
        this.size++;
        size2 = size;
   
    }
    println(size);
   
   if( size >= 200)
    {
      println("SSS");
      hit = false;
      size = 50;
      size2 = 50;
      //Code to remove the gate from the screeen once its explosion reaches over 200
      Objects.remove(this);
      score +=10;
      println(GatePos.x, GatePos.y);
    }
  
      
    if (dist( GatePos.x, GatePos.y, PlayerPos.x, PlayerPos.y) < size)
    {
      
      hit = true;
    }
  }
}