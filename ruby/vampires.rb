#What is your name? Some known vampires are in the area, and we can check against the Werewolf Intelligence Bureau database for their aliases.
puts "What is your name?"
emp_name = gets.chomp

#How old are you? What year were you born? This is to try to trick the vampire, who is likely several hundreds of years old. If an employee gives an age and a year of birth that don’t line up mathematically, that employee might be a vampire.
puts "What is your age?"
emp_age = gets.to_i

puts "In what year were you born?"
emp_birthyear = gets.to_i

#Our company cafeteria serves garlic bread. Should we order some for you? Vampires hate garlic. Do not even get a vampire started on garlic. Invite a vampire to an Italian restaurant even one time, and you’ll never hear the end of it.
puts "Would you like some garlic bread from the cafeteria? y/n"
emp_likesgarlic = gets.chomp

#Would you like to enroll in the company’s health insurance? Vampires are immortal, so they certainly don’t need health insurance.
puts "Would you like to enroll in the company's health insurance? y/n"
emp_healthinsure = gets.chomp