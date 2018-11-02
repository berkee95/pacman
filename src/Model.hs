-- | This module contains the data types
--   which represent the state of the game
module Model where

import Graphics.Gloss.Data.Point

nO_SECS_BETWEEN_CYCLES :: Float
nO_SECS_BETWEEN_CYCLES = 5

data GameState = GameState {
                   elapsedTime :: Float
                 , pacman      :: PacMan
                 , wallplaces  :: [Wall]
                 }

data Direction = Up|Left|Right|Down deriving (Show)

data KillAble = Killer | GetKilled deriving (Show)

data Wall = Wall Point Point

data Dot = Dot Point Float

data PacMan = PacMan
              { location  :: Point
               ,direction :: Direction
               ,velocity  :: Float
               ,timer     :: Float 
               ,killable  :: KillAble
               ,lifes     :: Float
              } deriving (Show)

-- Eerste punt is linksonder, Tweede punt is rechtsboven         
walls :: [Wall]
walls = [Wall (-80,45) (80,55), Wall (-80,-55) (80,-45), Wall(-90,15)(-80,55), Wall (-90,-55)(-80,-15), Wall (80,15)(90,55),
         Wall (80,-55)(90,-15),Wall(-130,-25)(-90,-15), Wall(-130,15)(-90,25), Wall(90,-25)(130,-15), Wall(90,15)(130,25),
         Wall(-140,-100)(-130,-15), Wall(-140,15)(-130,100), Wall(-180,-140)(-170,-15), Wall(-180,15)(-170,140), 
         Wall(-140,-100)(-130,-15),Wall(-140,15)(-130,100), Wall(170,-140)(180,-15),Wall(170,15)(180,140),
         Wall(130,-100)(140,-15),Wall(130,15)(140,100),Wall(-140,-110)(140,-100),Wall(-180,-150)(-15,-140),
         Wall(15,-150)(180,-140),Wall(-140,100)(140,110),Wall(-180,140)(-15,150),Wall(15,140)(180,150),
         Wall(-25,-190)(-15,-150),Wall(15,-190)(25,-150),Wall(-25,150)(-15,190),Wall(15,150)(25,190),
         Wall(-190,-25)(-180,-15),Wall(-190,15)(-180,25),Wall(180,-25)(190,-15),Wall(180,15)(190,25), 
         Wall(-200,-190)(-190,-15),Wall(-200,-200)(-15,-190),Wall(-200,15)(-190,190),Wall(-200,190)(-15,200),
         Wall(15,190)(200,200),Wall (190,15)(200,190), Wall(190,-200)(200,-15),Wall(15,-200)(200,-190),
         Wall(-240,-240)(-230,240),Wall(-240,230)(240,240),Wall(230,-240)(240,240),Wall(-240,-240)(240,-230)] 

food :: [Dot]
food = [Dot (0,-27) 3, Dot (-20,-27) 3, Dot (20,-27) 3, Dot (-40,-27) 3, Dot (40,-27) 3, Dot (-60,-27) 3, Dot (60,-27) 3]

pacmanInit :: PacMan
pacmanInit = (PacMan{ location = (0,0), direction = Up, velocity = 5, timer = 0, killable = GetKilled, lifes = 3})

initialState :: GameState
initialState = GameState 0 pacmanInit walls