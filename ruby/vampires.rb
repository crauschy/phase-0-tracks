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

puts "SURVEY ANSWERS:

Name: #{emp_name}

Age: #{emp_age}

Birth Year: #{emp_birthyear}

Would like garlic bread: #{emp_likesgarlic}

Would like health insurance: #{emp_needshealth}
"

#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
case
  when emp_age == (current_year - emp_birthyear) && (emp_likesgarlic || emp_needshealth) then vampire_status = "Probably not a vampire"
  when emp_age != (current_year - emp_birthyear) && (!emp_likesgarlic || !emp_needshealth) then vampire_status = "Probably a vampire"
  when emp_age != (current_year - emp_birthyear) && emp_likesgarlic && !emp_needshealth then vampire_status = "Almost certainly a vampire"
  when (emp_name == "Drake Kula") || (emp_name == "Tu Fang") then vampire_status = "Definitely a vampire"
  else vampire_status = "Results inconclusive."
end


puts "SURVEY RESULTS:

Status: #{vampire_status}"
