module Actor.Properties.Size (Size, mkSize) where

{- | $Size
 -
 - Tiny 	2½ by 2½ ft. 	Imp, Sprite
 - Small 	5 by 5 ft. 	Giant Rat, Goblin
 - Medium 	5 by 5 ft. 	Orc, Werewolf
 - Large 	10 by 10 ft. 	Hippogriff, Ogre
 - Huge 	15 by 15 ft. 	Fire Giant, Treant
 - Gargantuan 	20 by 20 ft. or larger 	Kraken, Purple Worm
 -
 - https://roll20.net/compendium/dnd5e/Monsters#content
 -}
data Size = Tiny
  | Small
  | Medium
  | Large
  | Huge
  | Gargantuan
  deriving (Enum, Show, Eq)

mkSize :: Size -> Size
mkSize s = s

