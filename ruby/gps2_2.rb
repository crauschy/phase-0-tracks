#////// METHOD DECLARATIONS ///////#

# Method to CREATE A LIST
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
def create_list(grocery_list)
  # grocery_list will be a string from user
  # assign an empty hash (will eventually be the list)
  final_list = {}
  # use split method to get list items
  grocery_list = grocery_list.split
  # Iterate through the elements of the array and insert to hash
  # set default quantity
  grocery_list.each { |item| final_list[item]=1}
  # print the list to the console [can you use one of your other methods here?]
  final_list
end
# output: [hash]



# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: our_list[item] = quantity

# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

#////// DRIVER CODE ///////#

# Ask user for list input
puts "Welcome to THE LIST MAKER!"

puts "What do you need to get at the grocery store?
Type everything you need and then hit 'enter'."

grocery_list = gets.chomp

p create_list(grocery_list)


