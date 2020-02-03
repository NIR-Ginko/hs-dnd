{-# LANGUAGE UnicodeSyntax #-}
{-# LANGUAGE OverloadedStrings #-}

module Actor.Properties.Constitution (Constitution, mkConstitution) where

{- | $Constitution
 -
 - Health (hit points)! Constitution lets you suffer more damage before
 - dying, and improves your ability to endure physical strain (Fortitude
 - save). Keeping this Ability Score at 14 is encouraged, even if you're
 - making a character who isn't a melee style. Brave adventurers
 - sometimes use 12.
 -
 - 1 (–5): Minimal immune system, body reacts violently to anything foreign
 - 2-3 (–4): Frail, suffers frequent broken bones
 - 4-5 (–3): Bruises very easily, knocked out by a light punch
 - 6-7 (–2): Unusually prone to disease and infection
 - 8-9 (–1): Easily winded, incapable of a full day’s hard labor
 - 10-11 (0): Occasionally contracts mild sicknesses
 - 12-13 (1): Can take a few hits before being knocked unconscious
 - 14-15 (2): Able to labor for twelve hours most days
 - 16-17 (3): Easily shrugs off most illnesses
 - 18-19 (4): Able to stay awake for days on end
 - 20-21 (5): Very difficult to wear down, almost never feels fatigue
 - 22-23 (6): Never gets sick, even to the most virulent diseases
 - 24-25 (7): Tireless paragon of physical endurance
 -
 - https://www.ddo.com/en/character-stats-101
 - https://dmingwithcharisma.com/2011/10/dd-stats-in-simple-language/
 -}
data Constitution = Constitution Int
  deriving (Show, Eq, Ord)

instance Bounded Constitution where
  minBound = Constitution 1
  maxBound = Constitution 25

mkConstitution :: Int -> Constitution
mkConstitution c | 1 > c = Constitution 1
  | 25 < c = Constitution 25
  | otherwise = Constitution c

