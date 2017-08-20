# # Paired with Noah Krell
# # Release 0: Implement a Simple Search

# # write and print sample array

# favorite_nums = [2,3,7,22,42,77]
# p favorite_nums

# # define method that returns indext of searched-for integer

# def search_array(favorite_nums,num)
#   # loop containing a conditional statement
#   iteration = 0
#   while iteration < favorite_nums.length
#     if num == favorite_nums[iteration]
#       return iteration
#     end
#     iteration += 1
#   end
# end

# # run and test method
# p search_array(favorite_nums,22)

# p search_array(favorite_nums,45)


# # Release 1: Calculate Fibonacci Numbers

# def fib(num)
#  i = 0
#  numbers = [0, 1]
#  until i == num - 2
#   x = numbers[-1] + numbers[-2]
#   numbers.push(x)
#  i += 1
#  end
#  numbers
# end

# p fib(6)
# # Verification of Large Numbers
# p fib(100).last


# Release 2: Insertion Sorting Method
# an insertion sorting method goes through an array and if an element is smaller than the one to its left, it shifts

#loop through array starting with the second element (E), compare E to the element to its left
#if the left > E, shift the left element to the right
  #continue to shift until either there is no element to the left or the element to the left is <= E
  #insert E to this new position
#repeat with the next element, E
#until index = length of the array (and all elements are sorted)

# Implement the sorting method in Ruby.

array = [5,3,1,8,7,12]
#expected outcome: [1,3,5,7,8,12]

#loop through array starting with the second element (E), compare E to the element to its left
#if the left > E, shift the left element to the right
  #continue to shift until either there is no element to the left or the element to the left is <= E
  #insert E to this new position
#repeat with the next element, E
#until index = length of the array (and all elements are sorted)