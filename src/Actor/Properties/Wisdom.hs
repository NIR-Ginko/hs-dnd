{-# LANGUAGE UnicodeSyntax #-}
{-# LANGUAGE OverloadedStrings #-}

{- |
 - Module providing smart constructor with boundary checks for Wisdom
 - character parameter
 -}
module Actor.Properties.Wisdom (Wisdom, mkWisdom) where

{- | $Wisdom
 -
 - Willpower and intuition! Affects your willpower (Will save) and the
 - amount of bonus spell points for some classes.
 -
 - 1 (–5): Seemingly incapable of thought, barely aware
 - 2-3 (–4): Rarely notices important or prominent items, people, or occurrences
 - 4-5 (–3): Seemingly incapable of forethought
 - 6-7 (–2): Often fails to exert common sense
 - 8-9 (–1): Forgets or opts not to consider options before taking action
 - 10-11 (0): Makes reasoned decisions most of the time
 - 12-13 (1): Able to tell when a person is upset
 - 14-15 (2): Can get hunches about a situation that doesn’t feel right
 - 16-17 (3): Reads people and situations fairly well
 - 18-19 (4): Often used as a source of wisdom or decider of actions
 - 20-21 (5): Reads people and situations very well, almost unconsciously
 - 22-23 (6): Can tell minute differences among many situations
 - 24-25 (7): Nearly prescient, able to reason far beyond logic
 -
 - https://www.ddo.com/en/character-stats-101
 - https://dmingwithcharisma.com/2011/10/dd-stats-in-simple-language/
 -}
data Wisdom = Wisdom Int
  deriving (Show, Eq, Ord)

instance Bounded Wisdom where
  minBound = Wisdom 1
  maxBound = Wisdom 25

{- | $mkWisdom
 - Here we providing smart constructor with boundary checks because
 - the parameter has its limits.
 -}
mkWisdom :: Int -> Wisdom
mkWisdom w
  | (minBound :: Wisdom) > (Wisdom w) = minBound :: Wisdom
  | (maxBound :: Wisdom) < (Wisdom w) = maxBound :: Wisdom
  | otherwise = Wisdom w
{- |mkWisdom w | 1 > w = Wisdom 1
  | 25 < w = Wisdom 25
  | otherwise = Wisdom w
-}
