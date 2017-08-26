#////// DECLARATIONS //////#
module Shout
  # these will be some methods soon
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :D"
  end
end


#////// DRIVER CODE //////#

p Shout.yell_angrily("What are you doing")

p Shout.yelling_happily("I'm so HAPPY")
