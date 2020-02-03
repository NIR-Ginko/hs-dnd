{-# LANGUAGE UnicodeSyntax #-}
{-# LANGUAGE OverloadedStrings #-}

module Actor.Properties.Dexterity (Dexterity, mkDexterity) where

{- | $Dexterity
 -
 - Coordination and agility! Affects your primary defenses (Armor
 - Class, or AC), ability to dodge attacks (Reflex saves), and the
 - accuracy of your ranged attacks.
 -
 - 
 - 1 (–5) Barely mobile, probably significantly paralyzed
 - 2-3 (–4) Incapable of moving without noticeable effort or pain
 - 4-5 (–3) Visible paralysis or physical difficulty
 - 6-7 (–2) Significant klutz or very slow to react
 - 8-9 (–1) Somewhat slow, occasionally trips over own feet
 - 10-11 (0) Capable of usually catching a small tossed object
 - 12-13 (1) Able to often hit large targets
 - 14-15 (2) Can catch or dodge a medium-speed surprise projectile
 - 16-17 (3) Able to often hit small targets
 - 18-19 (4) Light on feet, able to often hit small moving targets
 - 20-21 (5) Graceful, able to flow from one action into another easily
 - 22-23 (6) Very graceful, capable of dodging a number of thrown objects
 - 24-25 (7) Moves like water, reacting to all situations with almost no effort
 -
 - https://www.ddo.com/en/character-stats-101
 - https://dmingwithcharisma.com/2011/10/dd-stats-in-simple-language/
 -}
data Dexterity = Dexterity Int
  deriving (Show, Eq, Ord)

instance Bounded Dexterity where
  minBound = Dexterity 1
  maxBound = Dexterity 25

mkDexterity :: Int -> Dexterity
mkDexterity d | 1 > d = Dexterity 1
  | 25 < d = Dexterity 25
  | otherwise = Dexterity d

