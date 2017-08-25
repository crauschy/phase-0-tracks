#/////Method Declaration/////
class Puppy
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(i)
      i.times {puts "Woof!"}
  end
  def roll_over
      puts "*rolls over*"
  end
  def dog_years(human_years)
      dog_age = human_years * 7
      p dog_age
  end
  def stay(seconds)
      stay = "." * seconds
      puts "stay#{stay}okay!"
  end
  def initialize
      puts "Initializing new puppy instance..."
  end
end
#///////Driver Code//////
 fluffy = Puppy.new
 fluffy.fetch("ball")
 fluffy.speak(4)
 fluffy.roll_over
 fluffy.dog_years(2)
 fluffy.stay(10)

#/////Method Declaration////
class Red_Panda
    def initialize(name)
        @name = name
        puts "Welcome, #{name}..."
    end
    def pounce(i)
        i.times {puts "#{@name} pounced..."}
    end
    def sleepy(i)
        sleeps = "sleepy"
        sleeps.sub!("ee", 'ee'* i)
        puts "#{@name} is #{sleeps}"
    end
end
#//////Driver Code//////
# idgy = Red_Panda.new("Idgy")

# idgy.sleepy(8)
# idgy.pounce(3)

#create array of 50 names
counter = 1
names = []
until counter == 51
    names << "Idgy#{counter}"
    counter +=1
end
#create empty array for collection
red_pandas = []
# for each name, make instance of Red_Panda class
names.each do |name|
    red_pandas << Red_Panda.new(name)
end

red_pandas.each do |red_panda|
    red_panda.pounce(3)
    red_panda.sleepy(4)
end
