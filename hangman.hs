-- Hangman Fucnctional Programming Final CA --
import System.IO
--PseudoCode--
--Print welcome to game prompt user to enter in own word--
main :: IO ()
main = do
  putStr "Welcome to Hangman!\n\n"
  putStrLn instructions
  enterWord



--When word is chosen it is displayed like this ---------(for loop) blanks and if a word is guessed right, - turns to letter--
instructions :: String
instructions =
    "Instructions:\n\n"
 ++ "1. Enter word to guess off!\n\n"
 ++ "2. Begin entering letters that may be in the word.\n\n"
 ++ "3. You will be prompted whether or not the word contained your guess.\n\n"
 ++ "4. The game will continue up until you either guess all the letters or if you run out of guesses.\n\n"
 ++ "5. GLHF\n\n"
 
enterWord = do 
  putStrLn "Enter a word to guess off\n"
  word<-getLine
  testWord word

testWord word
  |length word > 0 =  getGuess
  |otherwise = putStr "You did not enter a word, goodbye!"

--changeToDashes:: String -> String
--changeToDashes wordC = (replicate (length word) '-')
  
  

getGuess = do
  putStrLn "Enter a letter go guess\n"
  guess<-getLine
  testGuess guess

testGuess guess
  |length guess > 0 = enterWord
  |otherwise = getGuess 


{-
testHangman:: String -> String ->IO()
testHangman testWord testGuess = putStrLn testWord testGuess  
--startGuessing:: String-> [Char]-> IO()
--startGuessing word guess
--  | guess `elem` word = putStrLn "Good Job!"
--  | guess `notElem` word = putStrLn "You are a shit cunt!"
--  | otherwise = putStrLn "You did not enter a letter"

--Set amount of guesses allowed, if letter guessed is wrong turns -1--
wrongGuesses:: Int
wrongGuesses = 8

--Prompt user to enter guesses, if they complete word display winning message--
--check:: String -> String -> String
--check xs ys 
--  [if x `elem` ys then x else '-'|x <- xs]
-}