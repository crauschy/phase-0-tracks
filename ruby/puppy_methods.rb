# #/////Method Declaration/////
# class Puppy
#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end
#   def speak(i)
#       i.times {puts "Woof!"}
#   end
#   def roll_over
#       puts "*rolls over*"
#   end
#   def dog_years(human_years)
#       dog_age = human_years * 7
#       p dog_age
#   end
#   def stay(seconds)
#       stay = "." * seconds
#       puts "stay#{stay}okay!"
#   end
#   def initialize
#       puts "Initializing new puppy instance..."
#   end
# end
# #///////Driver Code//////
#  fluffy = Puppy.new
#  fluffy.fetch("ball")
#  fluffy.speak(4)
#  fluffy.roll_over
#  fluffy.dog_years(2)
#  fluffy.stay(10)
#/////Method Declaration////
class Red_Panda
    def initialize
        puts "Initializing new red panda instance..."
    end
    def pounce(i)
        i.times {puts "pounce..."}
    end
    def sleeping(red_panda)
        puts "#{red_panda} is sleeping"
    end
end
#//////Driver Code//////
counter = 0
red_pandas = []
until counter == 50
    idgy0 = Red_Panda.new
    counter += 1
end
p Red_Panda
puts "
These are the red pandas:

#{red_pandas}"
red_pandas.each do |idgy|
    idgy.sleeping(idgy)
end
