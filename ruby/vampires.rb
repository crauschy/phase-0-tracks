#What is your name?
puts "What is your name?"
emp_name = gets.chomp

#How old are you? What year were you born?
puts "What is your age?"
emp_age = gets.to_i

puts "In what year were you born?"
emp_birthyear = gets.to_i
current_year = Time.new.year
#Should we order some for you?
puts "Would you like some garlic bread from the cafeteria? y/n"
emp_likesgarlic = gets.chomp
if emp_likesgarlic == "y" || emp_likesgarlic == "yes"
  emp_likesgarlic = true
else emp_likesgarlic = false
end
#Would you like to enroll in the company’s health insurance?
puts "Would you like to enroll in the company's health insurance? y/n"
emp_needshealth = gets.chomp
if emp_needshealth == "y" || emp_needshealth == "yes"
 emp_needshealth = true
else emp_needshealth = false
end

puts emp_name
puts emp_age
puts emp_birthyear
puts emp_likesgarlic
puts emp_needshealth

#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
if emp_age == (current_year - emp_birthyear) && (emp_likesgarlic || emp_needshealth)
  vampire_status = "Probably not a vampire"
else vampire_status = "n/a"
end
p vampire_status