#//// CLASS AND METHOD DECLARTIONS ////#

class Santa
  attr_reader :age, :ethnicity, :reindeer_ranking
  attr_accessor :gender

  def initialize(gender,ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  # # setter methods
  # def gender=(new_gender)
  #   @gender = new_gender
  # end

  # # getter methods
  # def age
  #   @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

  # other methods
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking[8] = reindeer_name
  end


end

#//// DRIVER CODE ////#

santas = []
gender_options = ["female", "male", "bigender", "gender fluid", "other", "N/A"]
ethnicity_options = ["black", "latino", "white", "asian", "Pacific Islander", "N/A" ]

gender_options.length.times do |index|
  santas << Santa.new(gender_options[index], ethnicity_options[index])
end

p santas[0]

puts "Santa's ranking of reindeer BEFORE getting mad at Vixen:"
p santas[0].reindeer_ranking
santas[0].get_mad_at("Vixen")
puts "Santa's ranking of reindeer AFTER getting mad at Vixen:"
p santas[0].reindeer_ranking

puts "This santa was #{santas[0].age}."

santas[0].celebrate_birthday

puts "This santa is now #{santas[0].age}."

puts "This santa is not #{santas[0].gender}..."
santas[0].gender=("bigender")
puts "They are #{santas[0].gender}."

puts "This santa is #{santas[0].ethnicity}."



