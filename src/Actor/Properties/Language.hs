module Actor.Properties.Language where

data Language = Common
  | Draconic
  deriving (Enum, Show, Eq)

mkLanguage :: Language -> Language
mkLanguage l = l

