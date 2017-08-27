# #////// DECLARATIONS //////#
# module Shout
#   # these will be some methods soon
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " :D"
#   end
# end


# #////// DRIVER CODE //////#

# p Shout.yell_angrily("What are you doing")

# p Shout.yelling_happily("I'm so HAPPY")

#////// DECLARATIONS //////#
module Shout
  # these will be some methods soon
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :D"
  end
end

class Coach
  include Shout
end

class Monkey
  include Shout
end


#////// DRIVER CODE //////#

monkey = Monkey.new
p monkey.yell_angrily("Give me all the bananas")

coach = Coach.new
p coach.yelling_happily("Yes, you can")
