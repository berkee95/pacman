-- | This module contains the data types
--   which represent the state of the game
module Model where

data InfoToShow = ShowNothing
                | ShowANumber Int
                | ShowAChar   Char

nO_SECS_BETWEEN_CYCLES :: Float
nO_SECS_BETWEEN_CYCLES = 5

data GameState = GameState {
                   infoToShow  :: InfoToShow
                 , elapsedTime :: Float
                 , pacman      :: PacMan
                 }

data Direction = Up|Left|Right|Down

data KillAble = Killer | GetKilled

data PacMan = PacMan
              { location  :: (Int,Int)
               ,direction :: Direction
               ,velocity  :: (Int,Int)
               ,timer     :: Int 
               ,killable  :: KillAble
               ,lifes     :: Int
              }



initialState :: GameState
initialState = GameState ShowNothing 0 pacman {location = (0,0), direction = Up, velocity = (0,1), timer = 0, killable = GetKilled, lifes = 3}