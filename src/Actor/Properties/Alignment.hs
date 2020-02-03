{-# LANGUAGE UnicodeSyntax #-}
{-# LANGUAGE OverloadedStrings #-}

module Actor.Properties.Alignment where

data Alignment = Unaligned
  | LawfulGood
  | NeutralGood
  | ChaoticGood
  | LawfulNeutral
  | Neutral
  | ChaoticNeutral
  | LawfulEvil
  | NeutralEvil
  | ChaoticEvil
  deriving (Enum, Show, Eq)

mkAlignment :: Alignment -> Alignment
mkAlignment a = a

