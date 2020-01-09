module Actor.Properties.Gender where

data Gender = Unique
  | Male
  | Female
  deriving (Enum, Show)

mkGender :: Gender -> Gender
mkGender g = g

