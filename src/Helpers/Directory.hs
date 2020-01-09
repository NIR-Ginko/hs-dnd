{- |
 - IO facilities to build game objects out of human editable
 - files
 -}
module Helpers.Directory where

import System.FilePath.Find
import System.IO
import Data.Ini
import Data.Text hiding (find)
import System.IO.Unsafe

getIniFiles :: String -> IO [FilePath]
getIniFiles dir = do
  find (always &&? depth ==? 0) (fileType ==? RegularFile &&? extension ==? ".ini") dir
{- |
readIni :: FilePath -> IO ()
readIni path = do
  contents <- unsafePerformIO $ readIniFile path
  --; lookupValue "character" "CharacterName" contents
  print $ printIni $ contents
-}

