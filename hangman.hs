-- Hangman Fucnctional Programming Final CA --
--PseudoCode--
--Print welcome to game pick random word or enter in own word, option to display rules--
main = do
    putStrLn $ "Welcome to my Hangman game!!"
    putStrLn $ "Instructions: 1. Enter word to guess off and begin guessing away!"
    putStrLn $ "              2. The game will end if you win or if you run out of guesses"
    putStrLn $ "Please enter a word to guess off!"
	
--When word is chosen it is displayed like this ---------(for loop) blanks and if a word is guessed right, - turns to letter--

--Set amount of guesses allowed, if letter guessed is wrong turns -1--

--Prompt user to enter guesses, if they complete word display winning message--