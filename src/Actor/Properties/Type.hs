module Actor.Properties.Type where

{- | $Type
 -
 - * Aberrations are utterly alien beings. Many of them have innate
 - magical Abilities drawn from the creature’s alien mind rather than
 - the mystical forces of the world. The quintessential Aberrations are
 - aboleths, Beholders, Mind Flayers, and slaadi.
 -
 - * Beasts are nonhumanoid creatures that are a natural part of the
 - fantasy ecology. Some of them have magical powers, but most are
 - unintelligent and lack any society or language. Beasts include all
 - varieties of ordinary animals, dinosaurs, and giant versions of
 - animals.
 -
 - * Celestials are creatures native to the Upper Planes. Many of them
 - are the servants of deities, employed as messengers or agents in the
 - mortal realm and throughout the planes. Celestials are good by
 - Nature, so the exceptional Celestial who strays from a good alignment
 - is a horrifying rarity. Celestials include angels, Couatls, and
 - Pegasi.
 -
 - * Constructs are made, not born. Some are programmed by their
 - creators to follow a simple set of instructions, while others are
 - imbued with sentience and capable of independent thought. Golems are
 - the iconic constructs. Many creatures native to the outer plane of
 - Mechanus, such as modrons, are constructs shaped from the raw
 - material of the plane by the will of more powerful creatures.
 -
 - * Dragons are large reptilian creatures of ancient Origin and
 - tremendous power. True Dragons, including the good metallic Dragons
 - and the evil chromatic Dragons, are highly intelligent and have
 - innate magic. Also in this category are creatures distantly related
 - to true Dragons, but less powerful, less intelligent, and less
 - magical, such as wyverns and pseudodragons.
 -
 - * Elementals are creatures native to the elemental planes. Some
 - creatures of this type are little more than animate masses of their
 - respective elements, including the creatures simply called
 - Elementals. Others have biological forms infused with elemental
 - energy. The races of genies, including djinn and efreet, form the
 - most important civilizations on the elemental planes. Other
 - elemental creatures include azers, and Invisible stalkers.
 -
 - * Fey are magical creatures closely tied to the forces of Nature.
 - They dwell in twilight groves and misty forests. In some worlds,
 - they are closely tied to the Feywild, also called the Plane of
 - Faerie. Some are also found in the Outer Planes, particularly the
 - planes of Arborea and the Beastlands. Fey include dryads, pixies,
 - and satyrs.
 -
 - * Fiends are creatures of wickedness that are native to the Lower
 - Planes. A few are the servants of deities, but many more labor
 - under the leadership of Archdevils and demon princes. Evil Priests
 - and mages sometimes summon Fiends to the material world to do their
 - bidding. If an evil Celestial is a rarity, a good fiend is almost
 - inconceivable. Fiends include Demons, devils, hell hounds,
 - rakshasas, and yugoloths.
 -
 - * Giants tower over Humans and their kind. They are humanlike in
 - shape, though some have multiple heads (ettins) or deformities
 - (fomorians). The Six varieties of true giant are Hill Giants, Stone
 - Giants, Frost Giants, Fire Giants, Cloud Giants, and Storm Giants.
 - Besides these, creatures such as ogres and Trolls are Giants.
 -
 - * Humanoids are the main peoples of a fantasy gaming world, both
 - civilized and savage, including Humans and a tremendous variety of
 - other species. They have language and culture, few if any innate
 - magical Abilities (though most humanoids can learn spellcasting),
 - and a bipedal form. The most Common Humanoid races are the ones most
 - suitable as player characters: Humans, Dwarves, elves, and Halflings.
 - Almost as numerous but far more savage and brutal, and almost
 - uniformly evil, are the races of Goblinoids (goblins, Hobgoblins, and
 - bugbears), orcs, Gnolls, Lizardfolk, and Kobolds.
 -
 - * Monstrosities are Monsters in the strictest sense—frightening
 - creatures that are not ordinary, not truly natural, and almost never
 - benign. Some are the results of magical experimentation gone awry
 - (such as owlbears), and others are the product of terrible curses
 - (including minotaurs and yuan-ti). They defy categorization, and in
 - some sense serve as a catch-all category for creatures that don’t fit
 - into any other type.
 -
 - * Oozes are gelatinous creatures that rarely have a fixed shape. They
 - are mostly subterranean, dwelling in caves and dungeons and feeding
 - on refuse, carrion, or creatures unlucky enough to get in their way.
 - Black puddings and gelatinous cubes are among the most recognizable
 - oozes.
 -
 - * Plants in this context are vegetable creatures, not ordinary flora.
 - Most of them are ambulatory, and some are carnivorous. The
 - quintessential Plants are the Shambling Mound and the Treant. Fungal
 - creatures such as the Gas Spore and the myconid also fall into this
 - category.
 -
 - * Undead are once-living creatures brought to a horrifying state of
 - undeath through the practice of necromantic magic or some unholy
 - curse. Undead include walking corpses, such as vampires and Zombies,
 - as well as bodiless spirits, such as ghosts and specters.
 -
 - https://kinogo.by/4432-supersemeyka-2004.html
 -}
data Type = Abberation
  | Beast
  | Celestial
  | Construct
  | Dragon
  | Elemental
  | Fey
  | Fiend
  | Giant
  | Humanoid
  | Monstrosity
  | Ooze
  | Plant
  | Undead
  deriving (Enum, Show, Eq)

mkType :: Type -> Type
mkType t = t

