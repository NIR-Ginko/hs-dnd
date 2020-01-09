{-# Language FlexibleInstances #-}
module Test.Main (tests) where

import Distribution.TestSuite
import Test.QuickCheck

instance TestOptions (String, Bool) where
    name = fst
    options = const []
    defaultOptions _ = return (Options [])
    check _ _ = []

instance PureTestable (String, Bool) where
    run (name, result) _ | result == True = Pass
                         | result == False = Fail (name ++ " failed!")

test :: (String, Bool) -> Test
test = pure

tests :: [Test]
tests =
  [ test $ "t1" True
  ]

