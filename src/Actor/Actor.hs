{- |
 - Module providing constructor for character/enemy
 -}
module Actor.Actor ( GameCharacter(..)
                   , genChar
                   )
  where

import Actor.Properties.CharacterName
import Actor.Properties.Strength
import Actor.Properties.Dexterity
import Actor.Properties.Constitution
import Actor.Properties.Intelligence
import Actor.Properties.Wisdom
import Actor.Properties.Charisma
import Actor.Properties.CharacterClass
import Actor.Properties.Speed
import Actor.Properties.HitPoint
import Actor.Properties.Inspiration
import Actor.Properties.ProficiencyBonus
import Actor.Properties.Gender
import Actor.Properties.Language
import qualified Actor.Properties.Race as Race
import qualified Actor.Properties.Type as Type

data ActiveProperties = ActiveProperties { currentHitPoint :: HitPoint
  } deriving (Show)

-- Game character data structure. Used for both players and enemies.
data GameCharacter = GameCharacter { characterName :: CharacterName
                                   , maxHitPoint :: HitPoint
                                   , strength :: Strength
                                   , dexterity :: Dexterity
                                   , constitution :: Constitution
                                   , intelligence :: Intelligence
                                   , wisdom :: Wisdom
                                   , charisma :: Charisma
                                   , inspiration :: Inspiration
                                   , proficiencyBonus :: ProficiencyBonus
                                   , speed :: Speed
                                   , speedSwim :: Speed
                                   , speedFly :: Speed
                                   , speedBurrow :: Speed
                                   , speedClimb :: Speed
                                   , charRace :: Race.Race
                                   , charType :: Type.Type
                                   , charClass :: CharacterClass
                                   , gender :: Gender
                                   , language :: Language
                                   } deriving (Show)

{- |
 - This function is intended to get three highest dice rolls out of six
 - to generate one of character's abilities.
 -}
sumThree :: [Int] -> Int
sumThree a = (a !! 0) + (a !! 1) + (a !! 2)

-- Roll d6 dice 6 times and get 3 highest values
genAbility :: Int
--genAbility = do
--  seed <- newStdGen
--  rdice <- rollDice d6 seed
--  rolls <- sort $ replicate 6 $ rdice
--  sumThree $ rolls
genAbility = 8

-- Function to generate random character
genChar :: String -> Int -> GameCharacter
genChar charname hp = GameCharacter 
  (CharacterName charname)
  (mkHitPoint hp)
  (mkStrength genAbility)
  (mkDexterity genAbility)
  (mkConstitution genAbility)
  (mkIntelligence genAbility)
  (mkWisdom 50)
  (mkCharisma genAbility)
  (Inspiration genAbility)
  (ProficiencyBonus genAbility)
  (Speed genAbility)
  (Speed genAbility)
  (Speed genAbility)
  (Speed genAbility)
  (Speed genAbility)
  (Race.mkRace Race.Human)
  (Type.mkType Type.Humanoid)
  (mkCharacterClass Fighter)
  (mkGender Male)
  (mkLanguage Draconic)

