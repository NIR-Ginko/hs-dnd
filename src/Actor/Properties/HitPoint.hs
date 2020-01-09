module Actor.Properties.HitPoint (HitPoint, mkHitPoint) where

data HitPoint = HitPoint Int
  deriving (Show, Eq, Ord)

instance Bounded HitPoint where
  minBound = HitPoint 0
  maxBound = HitPoint $ (maxBound :: Int)

mkHitPoint :: Int -> HitPoint
mkHitPoint hp
  | (minBound :: HitPoint) > (HitPoint hp) = minBound :: HitPoint
  | otherwise = HitPoint hp

