boolean status = false;
class Loading
{
  
  Loading()
  {
    
      background(0);
      strokeWeight(3);
      stroke(#0DBEFC);
      rect(10,10,width-20, height-20);
      fill(#0DBEFC);
      textAlign(CENTER);
      textSize(100);;
      text("Gary's Game", width/2, height/2 -200);
      
      textAlign(CENTER);
      textSize(30);;
      fill(#0DBEFC, fade);
      text("Press Space to play!!", width/2, height/2 +200);
      if(fade > 0 )
      {
        fade -= 2;
      }
      else 
      {
        fade = 250;
      }
    
    
  }
  
  
    void Switch()
    {
      if(keyPressed)
      {
        if( key == ' ' )
        {
          status = true;
          println("Play");
        }
      }
    }
 


}