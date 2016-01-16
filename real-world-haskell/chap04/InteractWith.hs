-- file: chap04/InteractWith.hs
-- This program applies a function to an input file, and then output to another
-- file.

-- import getArgs function from System.Environment module
import System.Environment (getArgs)

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

    -- replace "id" with the name of our function below
    -- here if id is applied, then the output file is equivalent to input file.
    myFunction = id
