module Actor.Properties.Charisma (Charisma, mkCharisma) where

{- | $Charisma
 - Personality and magnetism! Determines how well you influence
 - non-player characters (NPCs) and affects the amount of bonus spell
 - points for some classes. 
 -
 - 1 (–5): Barely conscious, incredibly tactless and non-empathetic
 - 2-3 (–4): Minimal independent thought, relies heavily on others to think instead
 - 4-5 (–3): Has trouble thinking of others as people
 - 6-7 (–2): Terribly reticent, uninteresting, or rude
 - 8-9 (–1): Something of a bore or makes people mildly uncomfortable
 - 10-11 (0): Capable of polite conversation
 - 12-13 (1): Mildly interesting, knows what to say to the right people
 - 14-15 (2): Interesting, knows what to say to most people
 - 16-17 (3): Popular, receives greetings and conversations on the street
 - 18-19 (4): Immediately likeable by many people, subject of favorable talk
 - 20-21 (5): Life of the party, able to keep people entertained for hours
 - 22-23 (6): Immediately likeable by almost everybody
 - 24-25 (7): Renowned for wit, personality, and/or looks
 -
 - https://www.ddo.com/en/character-stats-101
 - https://dmingwithcharisma.com/2011/10/dd-stats-in-simple-language/
 -}
data Charisma = Charisma Int
  deriving (Show, Eq, Ord)

instance Bounded Charisma where
  minBound = Charisma 1
  maxBound = Charisma 25

mkCharisma :: Int -> Charisma
mkCharisma c | 1 > c = Charisma 1
  | 25 < c = Charisma 25
  | otherwise = Charisma c

