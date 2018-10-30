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
walls = [Wall (-50,0) (-20, 100), Wall (20,0) (50,100)] 

pacmanInit :: PacMan
pacmanInit = (PacMan{ location = (0,0), direction = Up, velocity = 5, timer = 0, killable = GetKilled, lifes = 3})

initialState :: GameState
initialState = GameState 0 pacmanInit walls