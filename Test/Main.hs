{- |
 - Initial test suite.
 -}
{-# Language FlexibleInstances #-}
module Test.Main (tests) where

import qualified Distribution.TestSuite
import Test.QuickCheck

-- instance TestOptions (String, Bool) where
--    name = fst
--    options = const []
--    defaultOptions _ = return (Options [])
--    check _ _ = []

--instance PureTestable (String, Bool) where
--    run (name, result) _ | result == True = Pass
--                         | result == False = Fail (name ++ " failed!")

--test :: (String, Bool) -> Test
--test = pure

test2 :: (Eq a) => [a] -> [a] -> Bool
test2 xs ys = reverse (xs ++ ys) == reverse xs ++ reverse ys

prop_reverse :: [Int] -> Bool
prop_reverse xs = reverse (reverse xs) == xs

test1 :: Distribution.TestSuite.Test
test1 = True

tests :: IO [Distribution.TestSuite.Test]
tests = return [ test1 ]
-- tests = return
-- tests =
--  [
--  test $ "t1" True
--  ]


------------------------------------------------------------------------------
-- | A list of tests can be grouped together into a single test.
{- |mayFail :: Test
mayFail = testGroup "May fail"
    [ testProperty "Maybe fails" neqNegation
    , testProperty "Probably fails" (not . neqNegation)
    ]

neqNegation :: Int -> Bool
neqNegation x = x /= -x
-}

