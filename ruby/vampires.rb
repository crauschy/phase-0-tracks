#How many to process?
  puts "How many employees will be processed today?"
  to_process = gets.to_i
  counter = 0

##SURVEY##
while counter < (to_process)
  puts "SURVEY ##{counter + 1}"
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

  #If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
    vampire_status = ""
    case
      when emp_age == (current_year - emp_birthyear) && (emp_likesgarlic || emp_needshealth) then vampire_status = "Probably not a vampire"
      when emp_age != (current_year - emp_birthyear) && (!emp_likesgarlic || !emp_needshealth) then vampire_status = "Probably a vampire"
    end
    case
      when emp_age != (current_year - emp_birthyear) && !emp_likesgarlic && !emp_needshealth then vampire_status = "Almost certainly a vampire"
    end
    case
      when (emp_name == "Drake Kula") || (emp_name == "Tu Fang") then vampire_status = "Definitely a vampire"
    end

  emp_allergy = ""
  puts "Please name any allergies you have one at a time. When finished, type <done>."
    while emp_allergy == "" || (emp_allergy != "sunshine" && emp_allergy != "done")
      emp_allergy = gets.chomp!
    end

  if (emp_allergy == "sunshine") && !((vampire_status == "Almost certainly a vampire") || (vampire_status == "Definitely a vampire"))
    vampire_status = "Probably a vampire"
  else emp_allergy = "none of note"
  end

  if (vampire_status == "")
      vampire_status = "Results inconclusive"
  end
  puts "SURVEY ##{counter + 1} RESULTS:
    Name: #{emp_name.upcase}
    Age: #{emp_age}
    Birth Year: #{emp_birthyear}
    Likes Garlic: #{emp_likesgarlic}
    Needs Insurance: #{emp_needshealth}
    Allergies: #{emp_allergy}

    #{emp_name.upcase}'s Vampire Status: #{vampire_status.upcase}.
  "
  counter += 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
exit