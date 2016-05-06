--Guessing game that allows the user to guess
import System.IO
import System.Random(randomRIO)

getInt:: IO Int
getInt = readLn

main :: IO ()
main = do
  putStr "Enter a number for the range"
  n <- getInt
  x <- randomRIO (1, n) :: IO Int
  welcomeMsg
  play
  --print x --testing if random works.
  

welcomeMsg :: String
welcomeMsg =
    "Welcome to my Guess:\n\n"
 ++ "1. There will be a number randomly generated for you.\n"
 ++ "2. Once you make your first guess the main game will run.\n"
 ++ "3. You need to guess the number and you will be told either hot or cold depending on how your guess is.\n"
 ++ "4. The game ends when you win or if you run out of guesses!\n"
 ++ "6. \n"
 ++ "5. GLHF\n\n"
 ++ "5. Please enter a guess my friend: \n\n"

numberGuesses:: Int
numberGuesses = 6

guess = do
guess <- getInt

play:: Int -> Int -> IO ()
play x guess
		if x  ==  guess 
			then putStrLn "Gratz"
		else if x > guess
			then putStrLn "Lower"
			else x < guess
			then putStrLn "Higher"
    
    
             
