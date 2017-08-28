# DECLARATIONS

# Define WordGame class
class WordGame
  # Read guess count
  # Read over_won
  # Read over_lost
  # Read and write player_2_word
  attr_reader :word
  attr_reader :number_of_guesses
  attr_accessor :counter
  attr_accessor :player2_word
  attr_accessor :already_guessed
  attr_accessor :over_won
  attr_accessor :over_lost

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
    @counter = 0
    @number_of_guesses = word.length + 2
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
    puts "SUCCESS!"
    @player2_word = @player2_word.join
  end

  def is_over

    if @over_won
      puts "CONGRATULATIONS!!!
      Player 1's word was: #{@word.upcase},
      And you guessed it in #{@counter} tries!
      You're a ROCK STAR!"
      "won"

    else
      puts "WOMP, WoMp, wOmp, wommmp...
      You lose. You used up all #{@number_of_guesses} guesses and still couldn't figure it out.
      Player 1's word was: #{@word}
      Better luck next time :("
      "lost"
    end
  end

end

# DRIVER CODE

# Welcome Message
puts "Welcome to 'What's The Word' Game!"

# Get word string from Player 1; initialize as new instance of WordGame class
puts "Player 1, pick a word, any word (Player 2, don't peek!):"
word = gets.chomp
game = WordGame.new(word)

# Hide word from Player two
puts "Hit 'return' until your word is out of view, then type 'done'."
hide_word = ""
until hide_word == "done"
  hide_word = gets.chomp
end

puts "Player 2, you can now look at the screen."
puts "Please, do NOT scroll up: remember, cheaters NEVER prosper!
"

# Print the player2_word (first one will be ******)
puts "The chosen word is #{game.word.length}, so you will have #{game.number_of_guesses} guesses.
You can either guess one letter at a time or, if you think you know it, you can guess the whole word!
If you understand the stakes and are ready to play, hit 'enter'!"

# Game Play Loop
until game.over_won || game.over_lost

  guesses_left = game.number_of_guesses - game.counter

  # Print progress how many guesses Player 2 has left.
  puts "So far, you have:   #{game.player2_word}"
  puts "And you have #{guesses_left} guesses left."
  puts "Type the letter or word you would like to guess and hit 'enter':"

  # Make sure guess is valid and not a repeat
  guess_valid = false
  until guess_valid
    guess = gets.chomp
    if game.already_guessed.include?(guess)
      puts "You've aready guessed that, silly. Try something new."
    elsif (guess.length == 1 || guess.length == game.word.length)
      guess_valid = true
    else
      puts "You seem to have mistyped. Type either 1 LETTER or a word that is #{game.word.length} letters long:"
    end
  end

  # Store guess
  game.counter += 1
  game.already_guessed << guess

  if guess.length == game.word.length
    game.word_guess(guess)
  elsif game.word.include?(guess)
    game.letter_guess(guess)
  else
    puts "Sorry. The word does not contain #{guess}."
    game.player2_word
  end

  if game.player2_word == game.word
    game.over_won = true
  elsif game.counter == game.number_of_guesses
    game.over_lost = true
  end
end

game.is_over


