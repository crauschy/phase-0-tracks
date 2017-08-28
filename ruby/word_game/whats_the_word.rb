# DECLARATIONS

# Define WordGame class
  # Read guess count
  # Read over_won
  # Read over_lost
  # Read and write guessed word

  # Initialize method(word)
    # define @player1_word
    # define empty player2_word (string or array?) the same length as @word
    # define guess (letter/word player 2 guesses)
    # define over_won (false)
    # define over_lost (false)
    # define guess_count (word length + 2)

  # Congratulate Method
    # Print word and Congratulate winner.

  # Check For Win Method
    # takes player2_word as argument (which will update as guesses populate)
    # IF player2_word == player1_word, do congratulate method

  # Process Guess Method (looped)
    # Print the player2_word (first one will be ******)
    # Ask for guess letter or guess word
    # Compare guess to word
      # IF guess.length > 1
        #IF guess.length == word, break loop and do congratulate method
        #ELSE increase guess count
      # ELSIF guess is included in word, insert/replace at the right indexes in empty guess_word
        # Increase guess_count by 1
      # ELSIF letter is not included
    # Check for Win Method (player 2 word as argument)


# DRIVER CODE

# Welcome Message

# Get word string from Player 1; initialize as new instance of WordGame class

# Print the player2_word (first one will be ******)
# Print how many guesses Player 2 has.
# Ask for guess letter or guess word
# Run Process Guess Method
# Print Congratulatory message