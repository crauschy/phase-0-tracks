#CLIENT DETAILS PROGRAM

#METHOD DECLARATIONS

#Ask for and convert to appropriate data type
  # name - string
  # age - integer
  # kids - integer
  # decor_theme - s
  # budget

#Define empty client hash
  client = {
# (the following is unnecessary, but I wanted to keep track)
#     name: ,
#     age: ,
#     kids: ,
#     decor_theme: ,
#     budget:
  }

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
  client[:budget] = gets.to_i


# DRIVER CODE



# Print entire hash

# Give opportunity to update:
#   none will skip
#   "[key]" will prompt for new value and update hash

# Print updated hash