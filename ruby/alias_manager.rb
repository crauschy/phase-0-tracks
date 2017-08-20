#//////// METHOD DECLARATIONS ////////#

def make_alias(name)
  # get spy's name and convert to lowercase
  name.downcase!
  # split name string into array of first and last name
  first_last = name.split(' ')
  # reverse order of array elements
  first_last.reverse!
  # rejoin array elements to one string
  last_first = first_last.join(' ')
  # split rejoined string into individual characters
  splitify = last_first.split('')
  # rewrite characters with encrypted letters
  splitify.map! do |letter|
    vowels = "aeiou"
    consonants = "bcdfghjklmnpqrstvwxyz"
    # if a vowel, advance through aeiou
    if vowels.include? letter
      # provide for edge case
      if letter == "u"
        letter = "a"
      else
        letter = vowels[vowels.index(letter)+1]
      end
    # if a consonant, advance through only consonants
    elsif consonants.include? letter
      #provide for edge case
      if letter == "z"
        letter = "b"
      else
        letter = consonants[consonants.index(letter)+1]
      end
    # if neither, leave as is (for spaces)
    else
      letter
    end
  end
  # rejoin characters to form one string
  reunited = splitify.join('')
  # resplit string into array of two names
  split_again = reunited.split(' ')
  # capitalize each name in array
  split_again.map! {|name| name.capitalize}
  # rejoin names into one string
  final_alias = split_again.join(' ')
  # VOILA!!!
end


#//////// DRIVER CODE ////////#

# start loop
# get name from user
loop do
  puts "Please enter the name for which you'd like an alias, or type 'quit' to exit:"
  name = gets.chomp
  # call make_alias method on name
  if name == "quit"
    puts "Thank you. Good bye."
    exit
  else
    make_alias(name)
    puts "#{name}'s alias is #{make_alias(name)}."
  end
# repeat loop until user types 'quit'
end

