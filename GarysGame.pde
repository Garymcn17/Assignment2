Player player;
Enemy enemy;
float timeDelta = 1.0f / 60.0f;
boolean[] keys = new boolean[1000];
void setup()
{
  fullScreen();
  player = new Player(width / 2, height / 2, 0, 50);
  enemy = new Enemy(width -60, height -60);
}

void Background()
{
  background(0,0);
  fill(0);
  stroke(#0DBEFC);
  rect(10,10,width-20, height-20);
}


void draw()
{
  Background();
  if( Life == 0);
  {
    
  }
  else
  {
    player.update();
    player.render();
  }
  
  enemy.render();
  enemy.update();
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