module Actor.Properties.CharacterClass where

data CharacterClass = Barbarian
  | Bard
  | Druid
  | Fighter
  | Monk
  | Paladin
  | Ranger
  | Rogue
  | Sorcerer
  | Wizard
  deriving (Enum, Show, Eq)

mkCharacterClass :: CharacterClass -> CharacterClass
mkCharacterClass cc = cc

