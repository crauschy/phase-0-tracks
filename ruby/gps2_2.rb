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

grocery_list = "carrots apples bananas eggs milk"
list_1 = create_list(grocery_list)

# Method to ADD AN ITEM to a list
# input: list, item name, and optional quantity
def add_item(list, item, quantity=1)
# steps:
  # Add item as key and quantity as value to final_list hash(item and quantity will be user inputs)
  list[item] = quantity
  # Return updated hash
  list
end

item = "pizza"
quantity = 3

# output:
p add_item(list_1, item, quantity)
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

# # Ask user for list input
# puts "Welcome to THE LIST MAKER!"

# puts "What do you need to get at the grocery store?
# Type everything you need and then hit 'enter'."

# grocery_list = gets.chomp
# # Call create_list method
# p create_list(grocery_list)

# # Ask user if they would like to ADD or REMOVE or UPDATE and item from list; loop until 'done'

