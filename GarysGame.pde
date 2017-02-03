Player player;
Enemy death;
float timeDelta = 1.0f / 60.0f;
boolean[] keys = new boolean[1000];
ArrayList<GameObject> Objects = new ArrayList<GameObject>();
int enemies = 1;
Float release = 600.0;
float score = 2;
//Gates gate;
void setup()
{
  fullScreen();
  player = new Player(width / 2, height / 2, 0, 50);
  
}

void Background()
{
  background(0,0);
  fill(0);
  strokeWeight(3);
  stroke(#0DBEFC);
  rect(10,10,width-20, height-20);
  int add = 10;
  float add2 = 10;
  for (int i = 0; i< 21; i++)
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
}

void Game()
{
  for( i = 0; i < enemies; i++)
  {
    Enemy diamond = new Enemy(width - random(60,120), height -random(60,120));
    Enemy diamond1 = new Enemy(width - random(60,120), 0 +random(60,120));
    Enemy diamond2 = new Enemy(0 + random(60,120), 0 +random(60,120));
    Enemy diamond3 = new Enemy(0 + random(60,120), height - random(60,120));
    
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
  }
  
   
      Gates gate = new Gates(random(width),random(height), 50);
      Objects.add(gate);
    
}

void Score()
{
  fill(255);
  textSize(25);
  text ("Score : " + int(score), 50, 50);
  noFill();
}


int i;
void draw()
{
  Background();
  Score();
  if( Life == 1)
  {
    player.update();
    player.render();
      
    
  }

    if(frameCount % 300 ==0)
    {
      Game();
      score += 2;
    } 
    
  int p = Objects.size();
  for(int i = p -1; i >= 0 ; i--)
  {
       GameObject gate = Objects.get(i);
       gate.render();
       gate.update();
  }
  
  int s = Objects.size();
  for(int i = s -1; i >= 0 ; i--)
  {
   GameObject die = Objects.get(i);
   die.render();
   die.update();
    
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