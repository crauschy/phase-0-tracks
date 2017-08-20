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
p array

sorted = [array[0]]
i = 1
# Loop:
# Pick the first element X, insert it into a new, sorted array.
while i <= array.length
  p i
  if array[i] < sorted[i-1]
    s = i
    p "test0"
    loop do
    #while array[i] < sorted[s-1]
     s -= 1
    #   if s == 0
    #     sorted.insert(s,array[i])
    #     p sorted
    #     break
    #   end
      if array[i] >= sorted[s]
        sorted.insert(s,array[i])
        p "test1"
        break
      elsif s == 0
        p "test2"
        sorted.insert(s,array[i])
        break
      else
      end
    end
  else
    puts "test3"
    sorted.insert(i,array[i])
  end
  i += 1
  p array
  p sorted
end

# Compare the next element X (i) to the latest addition to the sorted array (i-1);
  # if X is less than the sorted (i-1)
    # hold X aside and compare it to each value in sorted array (descending index)
    # if X is less than the sorted (i-2), insert X into sorted array at i-2... and so on until X is >= i-whatever or i = 0
  # if X is greater than or equal to sorted (i-1), insert X into sorted array at i
# Until all elements of array have been sorted into sorted array.







# Pick next element
# Compare with all elements in the sorted sub-list
# Shift all the elements in the sorted sub-list that is greater than the value to be sorted
# Insert the value
# Repeat until list is sorted