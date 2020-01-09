module Actor.Enemies.AdultBrassDragon (adultBrassDragon) where

import Actor.Actor
import Actor.Properties.CharacterName
import Actor.Properties.Strength
import Actor.Properties.Dexterity
import Actor.Properties.Constitution
import Actor.Properties.Intelligence
import Actor.Properties.Wisdom
import Actor.Properties.Charisma
import Actor.Properties.CharacterClass
import Actor.Properties.Race
import Actor.Properties.Type
import Actor.Properties.HitPoint
import Actor.Properties.Speed
import Actor.Properties.Inspiration
import Actor.Properties.ProficiencyBonus
import Actor.Properties.Gender
import Actor.Properties.Language

adultBrassDragon :: GameCharacter
adultBrassDragon = GameCharacter
  (CharacterName "Adult Brass Dragon")
  (mkHitPoint 172)
  (mkStrength 23)
  (mkDexterity 10)
  (mkConstitution 21)
  (mkIntelligence 14)
  (mkWisdom 13)
  (mkCharisma 17)
  (Inspiration 17)
  (ProficiencyBonus 17)
  (Speed 10)
  (Speed 10)
  (Speed 10)
  (Speed 10)
  (Speed 10)
  (mkRace Dragonborn)
  (mkType Dragon)
  (mkCharacterClass Fighter)
  (mkGender Male)
  (mkLanguage Draconic)

