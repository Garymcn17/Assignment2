PVector GatePos;
float size2;
class Gates extends GameObject
{
  Boolean hit = false;
  float size = 50;
  PShape shape;
  float radi =30;
  int gateHit = 0;

  void render()
  {
    
  }
  
  void update()
  {
    if(this.size < 200 && hit == true)
    {
        this.size++;
        size2 = size;
   
    }
   
   if( size >= 200)
    {
      println("SSS");
      hit = false;
      size = 50;
      size2 = 50;
      //Code to remove the gate from the screeen once its explosion reaches over 200
      Objects.remove(this);
      score +=10;
    }
  
      
    if (dist( GatePos.x, GatePos.y, PlayerPos.x, PlayerPos.y) < size)
    {
      
      hit = true;
    }
  }
}