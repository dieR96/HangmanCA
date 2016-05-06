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
  putStrLn welcomeMsg
  play x

welcomeMsg :: String
welcomeMsg =
    "Welcome to my Guess:\n\n"
 ++ "1. There will be a number randomly generated for you.\n\n"
 ++ "2. Once you make your first guess the main game will run.\n\n"
 ++ "3. You need to guess the number and you will be told either hot or cold depending on how your guess is.\n\n"
 ++ "4. The game ends when you win or if you run out of guesses!\n\n"
 ++ "6. \n\n"
 ++ "5. GLHF\n\n"

play:: Int -> IO ()
play x = do putStrLn x