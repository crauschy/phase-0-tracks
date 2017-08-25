#//// CLASS AND METHOD DECLARTIONS ////#

class Santa

  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def initialize
    puts "Initializing Santa instance..."
  end

end

#//// DRIVER CODE ////#

santa_claus = Santa.new

santa_claus.speak

santa_claus.eat_milk_and_cookies("gingersnap")