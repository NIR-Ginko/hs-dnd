module Actor.Properties.Strength (Strength, mkStrength) where

{- | $Strength
 -
 - Muscle power! Affects your chance to strike a foe with melee attacks and damage.
 -
 - * 1 (-5) Morbidly weak, has significant trouble lifting own limbs
 - * 2-3 (-4) Needs help to stand, can be knocked over by strong breezes
 - * 4-5 (-3) Knocked off balance by swinging something dense
 - * 6-7 (-2) Difficulty pushing an object of their weight
 - * 8-9 (-1) Has trouble even lifting heavy objects
 - * 10-11 (0) Can literally pull their own weight
 - * 12-13 (1) Carries heavy objects for short distances
 - * 14-15 (2) Visibly toned, throws small objects for long distances
 - * 16-17 (3) Carries heavy objects with one arm
 - * 18-19 (4) Can break objects like wood with bare hands
 - * 20-21 (5) Able to out-wrestle a work animal or catch a falling person
 - * 22-23 (6) Can pull very heavy objects at appreciable speeds
 - * 24-25 (7) Pinnacle of brawn, able to out-lift several people
 -
 - https://www.ddo.com/en/character-stats-101
 - https://dmingwithcharisma.com/2011/10/dd-stats-in-simple-language/
 -}
data Strength = Strength Int
  deriving (Show, Eq, Ord)

instance Bounded Strength where
  minBound = Strength 1
  maxBound = Strength 25

mkStrength :: Int -> Strength
mkStrength s | 1 > s = Strength 1
  | 25 < s = Strength 25
  | otherwise = Strength s

