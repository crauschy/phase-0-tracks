#CLIENT DETAILS PROGRAM

#////////////////METHOD DECLARATIONS//////////////////


#/////////////////// DRIVER CODE ////////////////////

#Define empty client hash
  client = {
# (the following is unnecessary, but I wanted to keep track)
#     name: ,
#     age: ,
#     kids: ,
#     decor_theme: ,
#     budget:
  }

# Get data:
# NAME
  puts "Enter client's Last name:"
  client[:name] = gets.chomp

  puts "First name:"
  client[:name] = + client[:name] + ", " + gets.chomp

# AGE
  puts "How old is the client?"
  client[:age] = gets.to_i

# HOW MANY KIDS
  puts "How many kids does the client have?"
  client[:kids] = gets.to_i

# DECOR THEME
  puts "What is their preferred decor theme?"
  client[:decor_theme] = gets.chomp

# BUDGET
  puts "What is their budget? (only numbers, without commas)"
  client[:budget] = gets.chomp.to_i

#///////////////////////////////////////#

# Print entire hash for user
  puts "
  NEW CLIENT INFO:
    Name:         #{client[:name]}
    Age:          #{client[:age]}
    # of Kids:    #{client[:kids]}
    Decor Theme:  #{client[:decor_theme]}
    Budget:       #{client[:budget]}
    "

# Give opportunity to update:
  puts "
  Would you like to change a field? Please type 'none' or which one:
      name, age, kids, decor_theme, budget"
  change_field = gets.chomp.to_sym
  p change_field

#   none will skip; "[key]" will prompt for new value and update hash
if change_field != :none && change_field == :age || :budget || :kids
      puts "Enter the new value:"
      client[change_field] = gets.chomp.to_i
elsif change_field != :none
      puts "Enter the new value:"
      client[change_field] = gets.chomp
else puts "Thank you! Your new client has been added"
    exit
end

p client[change_field]

#Print updated hash
puts "
NEW CLIENT INFO:
  Name:         #{client[:name]}
  Age:          #{client[:age]}
  # of Kids:    #{client[:kids]}
  Decor Theme:  #{client[:decor_theme]}
  Budget:       #{client[:budget]}
  "


