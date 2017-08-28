# RSpec
# 'describe' block for each group of tests
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>
require_relative 'whats_the_word'

describe WordGame do
  let(:game) { WordGame.new("testing") }

  it "compares guess of the correct length to word" do
    expect(game.word_guess("testing")).to eq true
  end

  it "compares guess of the correct length to word" do
    expect(game.word_guess("texting")).to eq "*******"
  end

  it "compares a letter guess to letters in word and updates player2_word" do
    expect(game.letter_guess("t")).to eq "t**t***"
  end
    # define empty player2_word (string or array?) the same length as @word
    # define guess (letter/word player 2 guesses)
    # define over_won (false)
    # define over_lost (false)
    # define guess_count (word length + 2)


end