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
  # Process Word Method (only for guesses included in @word)

    #Word method
      # if guess == word Game over/ break loop
      # if guess length doesn't = word length, try again, without losing a guess
      # if guess length == word length but guess != word, lose guess count and loop

  # Process Letter Method

  def word_guess(guess)
    # IF guess.length > 1
    if guess == @word
      #improve congrats... maybe a method?
      @over_won = true
    else
      puts "That is not the correct word."
      @player2_word
    end
  end

  def letter_guess(guess)
    #Split player2_word into array to compare guessed letter
    @player2_word = @player2_word.split("")
    index = 0
    while index < @word.length
      if guess == @word[index]
        @player2_word[index] = guess
      end
      index += 1
    end
    @player2_word = @player2_word.join
  end

  def is_over
    if @over_won
      puts "CONGRATULATIONS!!!"
      puts "Player 1's word was: #{@word} and you guessed it in #{@guess_count}. You're a rock star."
      "won"
    else
      puts "You lose. You used up all #{@guess_count} guesses and still couldn't figure it out."
      puts "Player 1's word was: #{@word}"
      puts "Better luck next time."
      "lost"
    end
  end

end

# DRIVER CODE

# Welcome Message

# Get word string from Player 1; initialize as new instance of WordGame class

# Print the player2_word (first one will be ******)
# Print how many guesses Player 2 has.
# LOOP
  # Ask for guess letter or guess word
  # If guess.length != (1 || word.length)
  # LOOP
  # If guess length is > 1 elsif == 1 else, try again (no increase in guess count)
  # Run Process Guess Method
  # Print Congratulatory message
