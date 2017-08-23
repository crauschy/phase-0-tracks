#////// METHOD DECLARATIONS ///////#

# METHOD TO CREATE A LIST
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


# METHOD TO ADD AN ITEM TO A LIST
# input: list, item name, and optional quantity
def add_item(list, item, quantity=1)
# steps:
  # Add item as key and quantity as value to final_list hash(item and quantity will be user inputs)
  list[item] = quantity
  # Return updated hash
  list
end
# output: updated hash


# METHOD TO REMOVE AN ITEM FROM THE LIST
# input: list and item name
def remove_item(list, item)
# steps:
  # use delete method with key (item) as argument
  list.delete(item)
  # return list
  list
end
# output: updated hash

# METHOD TO UPDATE THE QUANTITY OF AN ITEM
# input:
# steps:
# output:

# METHOD TO PRINT A LIST AND MAKE IT LOOK PRETTY
# input:
# steps:
# output:

#////// DRIVER CODE ///////#
#TEST
grocery_list = "carrots apples bananas eggs milk"
list_1 = create_list(grocery_list)
p list_1
add_item = "pizza"
quantity = 3
puts "LIST AFTER ADDED ITEM:"
p add_item(list_1, add_item, quantity)

rm_item = "eggs"
puts "LIST AFTER REMOVED ITEM:"
p remove_item(list_1,rm_item)


# # Ask user for list input
# puts "Welcome to THE LIST MAKER!"

# puts "What do you need to get at the grocery store?
# Type everything you need and then hit 'enter'."

# grocery_list = gets.chomp
# # Call create_list method
# p create_list(grocery_list)

# # Ask user if they would like to ADD or REMOVE or UPDATE and item from list; loop until 'done'

