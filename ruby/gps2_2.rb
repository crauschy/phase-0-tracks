#////// METHOD DECLARATIONS ///////#

# METHOD TO CREATE A LIST
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
def create_list(title, list_arr)
  # grocery_list will be a string from user
  # assign an empty hash (will eventually be the list)
  final_list = {}
  # use split method to get list items
  list_arr = list_arr.split
  # Iterate through the elements of the array and insert to hash
  # set default quantity
  list_arr.each { |item| final_list[item]=1}
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
  list[add_item] = add_quantity
  # Return updated hash
  list
end
# output: updated hash


# METHOD TO REMOVE AN ITEM FROM THE LIST
# input: list and item name
def remove_item(list, rm_item)
# steps:
  # use delete method with key (item) as argument
  list.delete(rm_item)
  # return list
  list
end
# output: updated hash


# METHOD TO UPDATE THE QUANTITY OF AN ITEM
# input: list, item name, new quantity
def update_quantity(list, upd_item, new_quantity)
# steps:
  # reassign key (item) a new value (quantity)
  list[upd_item] = new_quantity
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
  list.each {|item,quantity| puts "   #{quantity}    #{item}"}
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
loop do
  change = ""
  puts "Need to make a change? Type:
    * 'add' to add something to your list
    * 'remove' to delete something from your list
    * 'update' to change the quantity of something, or
    * 'done' if everything looks alright"
  change = gets.chomp!
      # IF add, ask for quantity and item,update list hash; loop; must type 'done' when done adding
  if change == "add"
    puts "Type an item to add, or put 'done' to go back:"
    loop do
      add_item = gets.chomp
      if add_item != "done"
        puts "How many?"
        add_quantity = gets.chomp.to_i
        our_list = add_item(our_list, add_item, add_quantity)
        puts "Item added."
        puts "Type another item to add, or 'done' to exit:"
      else
        puts print_list(title,our_list)
        break
      end
    end
  # IF remove, ask for item, and update list hash
  elsif change == "remove"
    puts "Type the item you wish to remove or 'done' to go back:"
    loop do
      rm_item = gets.chomp
      if rm_item != "done"
        our_list = remove_item(our_list,rm_item)
        puts "Item removed."
        puts "Type another item to remove, or 'done' to exit:"
      else
        puts print_list(title,our_list)
        break
      end
    end
  # IF update, ask for new quantity and item, update hash; loop; must type 'done' when done updating
  elsif change == "update"
    puts "Type the item you'd like to update or 'done' to go back:"
    loop do
      upd_item = gets.chomp
      if upd_item != "done"
        puts "What is the correct quantity?"
        new_quantity = gets.chomp.to_i
        our_list = update_quantity(our_list, upd_item, new_quantity)
        puts "Item updated!"
        puts "Type another item to update its quantity or 'done' to exit:"
      else
        puts print_list(title,our_list)
        break
      end
    end
  elsif change == "done"
    break
  else
    puts "LIST MAKER did not understand your request."
  end
end
  # loop until 'done'
# When 'done', thank user and print updated list
puts "----------------------
Thank you for using THE LIST MAKER!!!
----------------------"
puts print_list(title,our_list)


#//// REFLECTION ////#
# What did you learn about pseudocode from working on this challenge?
  # It really does lay the groundwork for the code and helps get my mind in the right place-- thinking about the big picture before digging into the nitty gritty. Sometimes it's a pain though, because at times, it's easier to think about the code itself instead of what the code is doing.
# What are the tradeoffs of using arrays and hashes for this challenge?
  # I only used an array at the beginning. One problem that occurred to me (using the split method) was, what if the user enters something like "bag of coffee"... I'm sure there's way to provide for that in the code, but I felt like it was outside the scope of this challenge. Good to think about those things though I guess :)
# What does a method return?
  # whatever is on its last line (unless an explicit return is declared)
# What kind of things can you pass into methods as arguments?
  # pretty much any object: methods themselves, strings, arrays, integers, hashes...
# How can you pass information between methods?
  # using common arguments; also, methods can be called within other methods.
# What concepts were solidified in this challenge, and what concepts are still confusing?
  # Getting better with pseudocode and generally organizing my thinking. Driver code is by far more difficult/brain-twisting... I'm a bit of a perfectionist, so I spend too much time fixing things that don't matter (at this stage) and it burns me out. Need to know when to stop. But I'm loving that feeling of everything finally working!