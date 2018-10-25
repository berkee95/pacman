data Point = Point(Int, Int)  --To point locations of things
data Direction = Up | Left | Right | Down --To change the location of things (increment/decrement the Int of Point)
data PowerUp = Point --Location of the PowerUp to eat the ghosts with
data KillAble = Killer | GetKilled --To assign if the ghosts/pacman can get killed or kill the other
data Lifes = Integer --Amount of lifes
data Pacman = Point Direction Timer KillAble Lifes --The Location of Pacman, the Direction is it going, how long till its Powerup is over
--if it is a killer or getkilled(does it have a powerup), amount of lifes 
data Algoritme = Direction --gives the direction the ghost should go 
data StandaardKleur = Red | Green | Roze | Orange -- colour given to the ghost
data Ghost = Point Algoritme KillAble Timer StandaardKleur --location of the ghost, direction it should go at that moment, 
--is it a killer or does it get killed by pacman, time left until it is alive again after being killed by pacman, colour of ghost
data Pause = Running | Paused --To let the game run or paused by the user
data Line = Line(Point,Point) --Startingpoint till endpoint of the line
data Walls = Line --From which startingpoint to what endpoint there is a wall
-- (only straight lines are allowed so either x or y point should be the same of the 2 points)
data Food = Point --Location of food
data Score = Integer --Score of player (increase by time alive/food eaten/ghosts eaten)
data GameOver = Life | Dead --If pacman still has lifes the game continues else 
data Timer = Integer --Integer to show how much time left
data HighScore = Integer  --the highestscore of the file of highscores
data Finished = Finish | Playing -- wat is verschil tussen finished en gameover? als geen verschil halen we weg
data GameState = Pacman [Ghost] [Walls] [Food] [PowerUp] Lifes Score --updates changes and state of the game. Contains everything about
--current Pacman, current ghosts (in a container), all the walls of the board(in a container), all the current locations of food(in a container), 
--all the locations of the PowerUps (in a container), current amount of lifes, current score


-- data Cursor as possible bonus for later

--TEST TEST TEST