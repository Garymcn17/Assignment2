import processing.sound.*;
SoundFile Theme;
Exit exiting;
Player player;
Enemy death;
Loading Load;
float timeDelta = 1.0f / 60.0f;
boolean[] keys = new boolean[1000];
ArrayList<GameObject> Objects = new ArrayList<GameObject>();
int enemies = 1;
Float release = 600.0;
float score = 2;
PrintWriter output;
void setup()
{
  Theme = new SoundFile(this, "gwars-g4-deadline-loop.mp3");
  Theme.play();
  fullScreen();
  frameRate(120);
  player = new Player(width / 2, height / 2, 0, 50);
  Load = new Loading();
  exiting = new Exit();
  output = createWriter("Leaderboard.txt");
}

void Background()
{
  background(0);
  fill(0);
  strokeWeight(3);
  stroke(#0DBEFC, 50);
  rect(10,10,width-20, height-20);
  //int add = 10;
  //float add2 = 10;
  
  /*for (int i = 0; i< 21; i++)
  {
    stroke(#0DBEFC,50);
     line(10, add, width -10, add);
     add +=51;
  }
  
  for (int i = 0; i< 44; i++)
  {
    stroke(#0DBEFC,50);
    line(add2, 10, add2, height -10);
    add2 +=51;
  }
  */
  
   for(int Xpos = 20; Xpos < width; Xpos += 150)
    {
      for(int Ypos = 20; Ypos < height; Ypos += 150)
      {
        rect(Xpos, Ypos, 15 , 15); 
      }//end Ypos
    }//end Xpos
}


void Game()
{
  for( i = 0; i < enemies; i++)
  {
    Enemy diamond = new Enemy2(width - random(60,120), height -random(60,120));
    Enemy diamond1 = new Enemy2(width - random(60,120), 0 +random(60,120));
    Enemy diamond2 = new Enemy2(0 + random(60,120), 0 +random(60,120));
    Enemy diamond3 = new Enemy2(0 + random(60,120), height - random(60,120));
    Enemy Speedster = new Speedster(width - random(60,120), height -random(60,120));
    Enemy Speedster1 = new Speedster(width - random(60,120), 0 +random(60,120));
    Enemy Speedster2 = new Speedster(0 + random(60,120), 0 +random(60,120));
    Enemy Speedster3 = new Speedster(0 + random(60,120), height - random(60,120));
    Objects.add(diamond);
    if(frameCount > release)
    {
       Objects.add(diamond1);
    }
    if(frameCount > release*2)
    {
      Objects.add(diamond2);
    }
    if(frameCount > release*3)
    {
      Objects.add(diamond3);
    } 
     if(frameCount > release*4)
    {
      Objects.add(Speedster);
      Objects.add(Speedster1);
      Objects.add(Speedster2);
      Objects.add(Speedster3);
    }
  }
  score += 2;
}

void gate()
{
  Gates gate = new NormalGate(random(width-300),random(height-150), 50); 
  Objects.add(gate);
}

void Score()
{
  fill(255);
  textSize(25);
  text ("Score : " + score, 100, 50);
  noFill();
}

boolean exit = false;
int i;
void draw()
{
  Load.Switch();
  if( status == false)
  {
    Load.Load();
  }
  
  if(status == true)
  {

      if( Life == 1)
      {
        Background();
        Score();
        player.update();
        player.render();
        output.println(score);
        output.flush();
        output.close();
        
        if(frameCount % 300 ==0)
        {
          Game();
          gate();
        } 
      }

      int p = Objects.size();
      for(int i = p -1; i >= 0 ; i--)
      {
           GameObject go = Objects.get(i);
           go.render();
           go.update();
      }
      
      int s = Objects.size();
      for(int i = s -1; i >= 0 ; i--)
      {
       GameObject die = Objects.get(i);
       die.render();
       die.update();
      }
  }
  
   if (Life == 0)
      {
          exiting.ExitScreen();
          exiting.Switch();
      }
      

}

void keyPressed()
{ 
  keys[keyCode] = true;
}
 
void keyReleased()
{
  keys[keyCode] = false; 
}

boolean checkKey(int k)
{
  if (keys.length >= k) 
  {
    return keys[k] || keys[Character.toUpperCase(k)];  
  }
  return false;
}