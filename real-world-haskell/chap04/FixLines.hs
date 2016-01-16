
-- file: chap04/FixLines.hs
-- Remove line breaks in files


-- import getArgs function from System.Environment module
import System.Environment (getArgs)

splitLines :: String -> [String]
splitLines cs =
  let (pre, suf) = break isLineTerminator cs
  in
    pre: case suf of
      ('\r':'\n':rest)  -> splitLines rest
      ('\r':rest)       -> splitLines rest
      ('\n':rest)       -> splitLines rest
      _                 -> []

isLineTerminator :: Char -> Bool
isLineTerminator c = c == '\r' || c == '\n'

fixLines :: String -> String
fixLines input = unlines (splitLines input)

interactWith :: (String -> String) -> FilePath -> FilePath -> IO ()
interactWith function inputFile outputFile = do
  -- function is the first-class citizen.
  input <- readFile inputFile -- readFile has been imported by default
  writeFile outputFile (function input)

main = mainWith myFunction
  where
    mainWith function = do
      args <- getArgs
      case args of
        [ input, output ] -> interactWith function input output
        _ -> putStrLn "error: exactly two arguments needed"

    myFunction = id
