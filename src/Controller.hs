-- | This module defines how the state changes
--   in response to time and user input
module Controller where

import Model

import Graphics.Gloss
import Graphics.Gloss.Interface.IO.Game
import System.Random

-- | Handle one iteration of the game
step :: Float -> GameState -> IO GameState
step secs gstate = return $ gstate { elapsedTime = elapsedTime gstate + secs }
--  | elapsedTime gstate + secs > nO_SECS_BETWEEN_CYCLES
--  | otherwise = -- Just update the elapsed time
--    return $ gstate { elapsedTime = elapsedTime gstate + secs }

-- | Handle user input
input :: Event -> GameState -> IO GameState
input e gstate = return (inputKey e gstate)

inputKey :: Event -> GameState -> GameState
inputKey _ gstate =  gstate
    -- =  If the user presses a character key, show that one
    -- gstate { infoToShow = ShowAChar c }
    -- inputKey _ gstate = gstate -- Otherwise keep the same