{-# LANGUAGE UnicodeSyntax #-}
{-# LANGUAGE OverloadedStrings #-}

module Dice ( rollDice
            , d4
            , d6
            , d8
            , d10
            , d12
            , d20
            )
  where

import System.Random (StdGen, randomR)
import Data.List (sort)

-- Dice data type storing number of planes.
data Dice = Dice Int
  deriving (Show, Eq, Ord)

-- Function to get the integer value out of the dice
getDicePlanes :: Dice -> Int
getDicePlanes (Dice a) = a

getRnd :: (Int, StdGen) -> Int
getRnd (a, _) = a

-- Function to get random value out of dice.
-- FIXME: This is FUKKEN UNSAFE!
rollDice :: Dice -> StdGen -> Int
rollDice a gen = getRnd $ randomR(1, getDicePlanes a) gen

d4  = Dice 4  -- Tetrahedron
d6  = Dice 6  -- Cube
d8  = Dice 8  -- Octahedron
d10 = Dice 10 -- Pentagonal Trapezohedron
d12 = Dice 12 -- Dodecahedron
d20 = Dice 20 -- Icosahedron

