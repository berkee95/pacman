-- | This module defines how to turn
--   the game state into a picture
module View where

import Graphics.Gloss
import Model
import Graphics.Gloss.Data.Point

--data PacManState = Game 
--      { pacManLoc :: (Int,Int)
--      , pacManVel :: (Int, Int)
--      } deriving Show

--startingState :: Game
--startingState = Game 
 -- { pacManLoc = (-10, 30)
 -- , pacManVel = (-1, 3)
 -- }


view :: GameState -> IO Picture
view = return . drawWalls

drawWalls :: GameState -> Picture
drawWalls gstate = pictures wallShower
                    where wallShower = map drawWall walls ++ [color yellow $ circleSolid 2]
                    --walls = [Wall (-50,0) (-20, 100), Wall (20,0) (50,100)] 
   
-- Vanaf linksonder van de wall ga je met de helft van de breedte en de helft van de hoogte het daadwerkelijke middelpunt
drawWall :: Wall -> Picture
drawWall wall@(Wall (x1, y1) (x2, y2)) |(x1 < 0)   = translate (x1 + afstandX/2) (y1 + afstandY/2) $ color blue $ rectangleSolid afstandX afstandY
                                                      where afstandX = abs $ (abs x1) - (abs x2)
                                                            afstandY = abs $ (abs y1) - (abs y2)
--            where wall@(Wall (x1, y1) (x2, y2)) = (Wall (0, 10) (0, 50))

{-drawWall :: GameState -> Wall -> Picture
drawWall gstate (Wall (x1, y1) (x2, y2)) | (x1 == x2) = color blue $ rectangleSolid 5 (abs $ y1 - y2)
                                         | otherwise  = color blue $ rectangleSolid (abs $ x1 - x2) 5 
-}

--viewPure :: GameState -> Picture
--viewPure gstate = case infoToShow gstate of
-- ShowNothing   -> blank
-- ShowANumber n -> color green (text (show n))
-- ShowAChar   c -> color green (text [c])
  