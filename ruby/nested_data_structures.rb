#Release 0: Implement a Simple Search

#write and print sample array

favorite_nums = [2,3,7,22,42,77]
p favorite_nums

#define method that returns indext of searched-for integer

def search_array(favorite_nums,num)
  #loop containing a conditional statement
  iteration = 0
  while iteration < favorite_nums.length
    if num == favorite_nums[iteration]
      return iteration
    end
    iteration += 1
  end
end

#run and test method
p search_array(favorite_nums,22)

p search_array(favorite_nums,45)