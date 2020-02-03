{-# LANGUAGE UnicodeSyntax #-}
{-# LANGUAGE OverloadedStrings #-}

module Actor.Properties.Intelligence (Intelligence, mkIntelligence) where

{- | $Intelligence
 -
 - Learning ability and reasoning! Affects skill points gained at each
 - level and the amount of bonus spell points for some classes.
 -
 - 1 (–5): Animalistic, no longer capable of logic or reason
 - 2-3 (–4): Barely able to function, very limited speech and knowledge
 - 4-5 (–3): Often resorts to charades to express thoughts
 - 6-7 (–2): Often misuses and mispronounces words
 - 8-9 (–1): Has trouble following trains of thought, forgets most unimportant things
 - 10-11 (0): Knows what they need to know to get by
 - 12-13 (1): Knows a bit more than is necessary, fairly logical
 - 14-15 (2): Able to do math or solve logic puzzles mentally with reasonable accuracy
 - 16-17 (3): Fairly intelligent, able to understand new tasks quickly
 - 18-19 (4): Very intelligent, may invent new processes or uses for knowledge
 - 20-21 (5): Highly knowledgeable, probably the smartest person many people know
 - 22-23 (6): Able to make Holmesian leaps of logic
 - 24-25 (7): Famous as a sage and genius
 -
 - https://www.ddo.com/en/character-stats-101
 - https://dmingwithcharisma.com/2011/10/dd-stats-in-simple-language/
 -}
data Intelligence = Intelligence Int
  deriving (Show, Eq, Ord)

instance Bounded Intelligence where
  minBound = Intelligence 1
  maxBound = Intelligence 25

mkIntelligence :: Int -> Intelligence
mkIntelligence i | 1 > i = Intelligence 1
  | 25 < i = Intelligence 25
  | otherwise = Intelligence i

