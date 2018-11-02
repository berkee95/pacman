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
walls = [Wall (-75,-45) (20, -40), Wall (-80,-45) (-75,100), Wall (50,-45) (80, -40),
         Wall (-50,40) (50,100), Wall (80,40) (140,150), Wall (-80,125) (80,150), Wall (-80,180) (140,190),
         Wall (80 , -45) (140, 15), Wall (170, -150) (175,220), Wall (50, -120) (140,-70), Wall (-140, -120) (20,-70),
         Wall (-140, -45) (-105, 100), Wall (-140,125) (-105,220), Wall (-175,215) (175,220), Wall (-175,-155) (-170, 220),
         Wall (-170, -155) (175,-150)] 

food :: [Dot]
food = [Dot (0,-27) 3, Dot (-20,-27) 3, Dot (20,-27) 3, Dot (-40,-27) 3, Dot (40,-27) 3, Dot (-60,-27) 3, Dot (60,-27) 3]

pacmanInit :: PacMan
pacmanInit = (PacMan{ location = (0,0), direction = Up, velocity = 5, timer = 0, killable = GetKilled, lifes = 3})

initialState :: GameState
initialState = GameState 0 pacmanInit walls