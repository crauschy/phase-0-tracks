#//// CLASS AND METHOD DECLARTIONS ////#

class Santa

  def initialize(gender,ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end



end

#//// DRIVER CODE ////#

santas = []
gender_options = ["female", "male", "bigender", "gender fluid", "other", "N/A"]
ethnicity_options = ["black", "latino", "white", "asian", "Pacific Islander", "N/A" ]

gender_options.length.times do |index|
  santas << Santa.new(gender_options[index], ethnicity_options[index])
end

p santas