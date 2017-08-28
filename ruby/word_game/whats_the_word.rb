# DECLARATIONS

# Define WordGame class
class WordGame
  # Read guess count
  # Read over_won
  # Read over_lost
  # Read and write player_2_word
  attr_reader :guess_count
  attr_reader :over_won
  attr_reader :over_lost
  attr_accessor :player2_word
  attr_accessor :already_guessed

  # Initialize method(word)
  def initialize(word)
    # define @player1_word
    @word = word
    # define empty player2_word (string or array?) the same length as @word
    @player2_word = "*" * word.length
    # define over_won (false)
    @over_won = false
    # define over_lost (false)
    @over_lost = false
    # define empty array
    @already_guessed = []
    # define guess_count (word length + 2)
    @guess_count = word.length + 2
  end
  # Congratulate Method
    # Print word and Congratulate winner.

  # Check For Win Method
    # takes player2_word as argument (which will update as guesses populate)
    # IF player2_word == player1_word, do congratulate method

  # Process Word Method (only for guesses included in @word)
  def process_guess(guess)
    # IF guess.length > 1
    if guess.length > 1
      if guess == word
        #improve congrats... maybe a method?
        @over_won = true
      else
        puts "That is not the word."
        @player2_word
      end
    else
      #Split player2_word into array to compare guessed letter
      @player2_word.split!
      index = 0
      while index < @word.length
        if guess == @word[index]
          @player2_word[index] = guess
        end
        index += 1
      end
      @player2_word = @player2_word.join
    end
  end




    # ELSIF guess is included in word, insert/replace at the right indexes in empty guess_word
      # Increase guess_count by 1
    # ELSIF letter is not included
  # Check for Win Method (player 2 word as argument)
end

# DRIVER CODE

# Welcome Message

# Get word string from Player 1; initialize as new instance of WordGame class

# Print the player2_word (first one will be ******)
# Print how many guesses Player 2 has.
# Ask for guess letter or guess word
# Run Process Guess Method
# Print Congratulatory message