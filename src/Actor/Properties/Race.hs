module Actor.Properties.Race where

data Race = Tiefling
  | HalfOrc
  | HalfElf
  | HighElf
  | WoodElf
  | DrowElf
  | Elf
  | HillDwarf
  | MountainDwarf
  | Dwarf
  | Gnome
  | ForestGnome
  | RockGnome
  | Halfling 
  | LightfootHalfling
  | StoutHalfling
  | Human
  | Dragonborn
  deriving (Enum, Show, Eq)

mkRace :: Race -> Race
mkRace r = r

