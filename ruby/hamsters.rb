#Ask for hamster's name.

puts "What is the hamster's name?"
name = gets.chomp

#Ask the volume level of hamster 1-10.

puts "On as scale of 1-10, 10 being loudest, what is the volume level of #{name}?"
volume = gets.to_i

#Ask their fur-color

puts "What's their fur-color?"
fur = gets.chomp

#Ask if good candidate for adoption.

puts "Is #{name} a good candidate for adoption-- y/n?"
adopt = gets.chomp
if adopt == "y"
  adopt = true
else
  adopt = false
end

#Ask for estimated age.

puts "About how old do you think #{name} is?"
age = gets.to_f

  #Set unanswered est. age to `nil`
if age == ""
  age = nil
  end

#Print Hamster Data to Console

puts "Name: #{name}"
puts "Volume Level: #{volume}"
puts "Fur-Color : #{fur}"
puts "Adoptable? #{adopt}"
puts "Age: #{age}"
