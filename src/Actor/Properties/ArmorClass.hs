{-# LANGUAGE UnicodeSyntax #-}
{-# LANGUAGE OverloadedStrings #-}

module Actor.Properties.ArmorClass where

{- | $Armor class
 -
 - Armor Class (AC) is a number that represents a character's ability to
 - avoid being hit in combat. Every character has a base AC of 10 in
 - DDO, but that number goes up based on various factors such as race,
 - class, feat and equipment choices.
 -
 - https://www.ddo.com/en/character-stats-101
 -}
data ArmorClass = ArmorClass Int
  deriving (Show, Eq, Ord)

