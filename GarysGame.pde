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
}


void draw()
{
  Background();
  player.update();
  player.render();
  
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