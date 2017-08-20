# Paired with Noah Krell
#//////////////////////////////////////////#
puts "Release 0: Implement a Simple Search"

# write and print sample array

favorite_nums = [2,3,7,22,42,77]
puts "These are my favorite numbers: #{favorite_nums}"

# define method that returns index of searched-for integer

def search_array(favorite_nums,num)
  # loop containing a conditional statement
  iteration = 0
  while iteration < favorite_nums.length
    if num == favorite_nums[iteration]
      return iteration
    end
    iteration += 1
  end
end

# run and test method
puts "22 is located at index #{search_array(favorite_nums,22)}."

p search_array(favorite_nums,45)

#//////////////////////////////////////////#

puts "
Release 1: Calculate Fibonacci Numbers"

def fib(num)
 i = 0
 numbers = [0, 1]
 until i == num - 2
  x = numbers[-1] + numbers[-2]
  numbers.push(x)
 i += 1
 end
 numbers
end

p fib(8)
# Verification of Large Numbers
p fib(100).last
puts "It works!"
#//////////////////////////////////////////#

puts "
Release 2: Insertion Sorting Method"
# an insertion sorting method goes through an array inserting elements one by one into a new array that sorts as it goes by shifting elements from the left to the right if the element in question is smaller than it.

#PSEUDOCODE
# Pick the first element X, insert it into a new, sorted array.
# Compare the next element X (i) to the latest addition to the sorted array (i-1);
  # if X is less than the sorted (i-1)
    # hold X aside and compare it to each value in sorted array (descending index)
    # if X is less than the sorted (i-2), insert X into sorted array at i-2... and so on until X is >= i-whatever or i = 0
  # if X is greater than or equal to sorted (i-1), insert X into sorted array at i
# Until all elements of array have been sorted into sorted array.


array = [5,3,1,8,7,2,4,6,10,9]
# expected outcome: [1,3,5,7,8,12]

def insertion_sort(array)
  # insert first array element to new sorted array
  sorted = [array[0]]
  i = 1
  # Loop:
  while i < array.length
  # compare next element to last element of sorted array

    # if less than:
    if array[i] < sorted[i-1]

      # redefine sorted index counter in relation to i
      s = i-1

      loop do
        # if s index is at 0, insert element there
        if s == 0 && array[i] < sorted[s]
          sorted.insert(0,array[i])
          break
        # if >= sorted value to left, insert at left value's index + 1
        elsif array[i] >= sorted[s]
          sorted.insert(s+1,array[i])
          break
        # otherwise, reduce sorted index counter and repeat
        else
          s -= 1
        end
      end
    #if greater than or equal, insert at element's array index
    else
      sorted.insert(i,array[i])
    end
    i += 1
    #loop through all elements of array
  end
  sorted
end

puts "This was the original array: #{array}"
puts "This is that array sorted: #{insertion_sort(array)}"