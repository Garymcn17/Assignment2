# Assignment2 - Gary's Game

#Click the picture to watch the video

[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/z8OSQJh9WI4/0.jpg)](https://www.youtube.com/watch?v=z8OSQJh9WI4)

For the assignment brief we were asked to make a game.

I began by deciding what game I wanted to make. I choose to try and recreate one of my favourite games and gamemode from that game. So I tried to recreate Pacifism from Geometry Wars. The concept of this game in theory would be easy to recreate but in practice it turned out a lot harder. I simplified the game so I could create it in processing. Its a game based on surviving and using gates to kill the enemies without being able to shoot. I went for a retro game look in my design as I thought this would be most suitable for a basic game on processing. 

#Features

- Start Screen
    This is retro loading screen with instructions to start the game.
- Death Screen
    This is a retro end screen which shows score and allows user to exit.
- The Game
    You are a ship.. And you must dodge the enemies and survive the waves.
- The Score
    Keeps track of users score. User gets 2 score per 5 seconds they're alive, 10 per gate they activate and 100 per enemy they kill.
- The Enemies
    A new enemy spawns every 10 seconds from a new corner and after 40 seconds faster enemies begin spawning.
    
    
#Controls
- W, A, S, D to control the ship.
- SPACE to start game.
- X to exit the game.


#Functionality
The game works by spawning enemies in the corners at different time intervals. These enemies are pulled towards the position of the player ship. If the enemies hit the player ship it kill the player. Enemies spawn every 5 seconds and them every 10 seconds it adds a new enemy in a new corner of the screen. Once all the corners are spawning enemies it begins to spawn the new enemies, which are faster  in all the corners. This increases the difficulty alot and makes it very hard to survive. The player can also kill the enemies by going through the gates. These gates expand and kill the enemies within the radius of the circle. So the player must dodge the enemies and use the gates to kill the enemies. I used aTan to pull the enemies towards the player but at first I used a processing concept called easing.
Easing was more difficult for the player as the enemies were a lot faster so I used aTan instead to make it more enjoyable for the user.

#Key Points
- The program contains multiple classes and uses inheritance across them to prevent replication of code.
- I use aTan for the enemy movement.
- I have 3 collision systems.
- I read the enemies score into a .txt File. ( broken ).
- I use a GameObjects arraylist to store enemies and gates.
- 

