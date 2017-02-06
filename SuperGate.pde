class SuperGate extends Gates
{
  
  SuperGate(float x, float y,float size)
  {
    GatePos = new PVector(x,y);
    
    this.size = size;
       size = 50;
    //create();
  }
  
  void render()
  {
      pushMatrix(); // Stores the current transform
      translate(GatePos.x, GatePos.y);
      //shape(shape, 0,0);
      stroke(#89FF24,255);
      ellipse(0,0,size,size);
      popMatrix(); // Restore the transform
  }
}