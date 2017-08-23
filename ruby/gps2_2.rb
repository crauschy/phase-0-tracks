#////// METHOD DECLARATIONS ///////#

# METHOD TO CREATE A LIST
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
def create_list(title, list_arr)
  # grocery_list will be a string from user
  # assign an empty hash (will eventually be the list)
  final_list = {}
  # use split method to get list items
  grocery_list = grocery_list.split
  # Iterate through the elements of the array and insert to hash
  # set default quantity
  grocery_list.each { |item| final_list[item]=1}
  # print the list to the console [can you use one of your other methods here?]
  puts print_list(title,final_list)
  final_list
end
# output: [hash]


# METHOD TO ADD AN ITEM TO A LIST
# input: list, item name, and optional quantity
def add_item(list, add_item, add_quantity=1)
# steps:
  # Add item as key and quantity as value to final_list hash(item and quantity will be user inputs)
  list[item] = quantity
  # Return updated hash
  list
end
# output: updated hash


# METHOD TO REMOVE AN ITEM FROM THE LIST
# input: list and item name
def remove_item(list, rm_item)
# steps:
  # use delete method with key (item) as argument
  list.delete(item)
  # return list
  list
end
# output: updated hash


# METHOD TO UPDATE THE QUANTITY OF AN ITEM
# input: list, item name, new quantity
def update_quantity(list, upd_item, new_quantity)
# steps:
  # reassign key (item) a new value (quantity)
  list[item] = new_quantity
  # return list
  list
end
# output: updated hash

# METHOD TO PRINT A LIST AND MAKE IT LOOK PRETTY
# input: title, list
def print_list(title,list)
# steps:
  # print title of list (will ask user for this input)
  puts "**********************"
  puts "  #{title.upcase}:"
  puts "**********************"
  # print headers of item and quantity
  puts "   #    ITEM"
  puts "----------------------"
  # print each item and it's quantity, bulleted if possible
  list.each {|item,quantity| puts "  #{quantity}    #{item}"}
  puts "**********************"
  # print today's date
  date = Time.new
  puts "  Made on: #{date.month}/#{date.day}/#{date.year}"
end
# output: nil



#////// DRIVER CODE ///////#

# Ask user for title and list input
puts "Welcome to THE LIST MAKER!"

puts "What do you need to get at the grocery store?
Type everything you need and then hit 'enter'."
initial_list = gets.chomp
puts "What would you like to name your list?"
title = gets.chomp
# Call create_list method
our_list = create_list(title,initial_list)

# Ask user if they'd like to ADD or REMOVE or UPDATE and item from list or type 'done';
change = ""
  while change != "done"
  puts "Need to make a change? Type:
    * 'add' to add something to your list
    * 'remove' to delete something from your list
    * 'update' to change the quantity of something, or
    * 'done' if everything looks alright"
  change = get.chomp!
      # IF add, ask for quantity and item,update list hash; loop; must type 'done' when done adding
      if change == "add"
        puts "Type an item to add, or put 'done':"
        loop do
          add_item = gets.chomp
          if add_item != "done"
            puts "How many?"
            add_quantity = gets.chomp
            our_list = add_item(our_list, add_item, add_quantity=1)
            puts "Item added. Type another item, or 'done' to exit."
          else
            puts print_list(our_list)
            break
          end
        end
      # IF remove, ask for item, and update list hash
      elsif change == "remove"
        puts "Type the item you wish to remove or 'done' to exit."
        loop do
          rm_item = gets.chomp
          if rm_item != "done"our_list =
      # IF update, ask for new quantity and item, update hash; loop; must type 'done' when done updating
      elsif change == "update"
      else
        puts "LIST MAKER did not understand your request"

  # loop until 'done'
# If 'done', thank user and print updated list

puts "Do you need to add, remove, or update any quantities of items? y/n?"





# #TEST CODE
# title = "Cate's List"
# grocery_list = "carrots apples bananas eggs milk"
# list_1 = create_list(title,grocery_list)
# p list_1
# add_item = "pizza"
# quantity = 3
# puts "LIST AFTER ADDED ITEM:"
# p add_item(list_1, add_item, quantity)

# rm_item = "eggs"
# puts "LIST AFTER REMOVED ITEM:"
# p remove_item(list_1,rm_item)

# new_quantity = 5
# item = "bananas"
# puts "LIST AFTER QUANTITY UPDATE:"
# p update_quantity(list_1, item, new_quantity)

# puts print_list(title,list_1)