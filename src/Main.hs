{-# LANGUAGE UnicodeSyntax #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

--import System.Random (getStdRandom, newStdGen, randomRIO, randomR, StdGen, RandomGen, getStdGen)
--import System.IO.Unsafe (unsafePerformIO)
import Actor.Actor (genChar)
import Actor.Enemies (adultBrassDragon)

import BattleEngine.EnemyLoader

main :: IO ()
main = do {
  --loadEnemies
  ; print $ adultBrassDragon
  }

