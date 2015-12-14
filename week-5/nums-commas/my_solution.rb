# ints to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer
# What is the output? (i.e. What should the code return?) A comma-separated integer as a string
# What are the steps needed to solve the problem?
# 1. Accept integer and convert to an array of strings
# 2. Check to see the array size and RETURN the array as a string if the array size is less than 4
# 3. Iterate of the array and add a "," in every 4th index from the last index of the array
# 4. Return the joined array as a string

# 1. Initial Solution
def separate_comma(integer)
  
  array = integer.to_s.split('')
  number = array.size / 3.0
  x = -4

  if array.size < 4
    integer.to_s 
  elsif array.size % 3 == 0
    (number.to_i - 1).times do |i|
      array.insert(x, ',')
      x -= 4
    end
    array.join("")
  else
    number.to_i.times do |i|
      array.insert(x, ',')
      x -= 4
    end
    array.join("")
  end
end

# 2. Refactored Solution
  
def separate_comma(integer)
  integer.to_s.reverse.split('').each_slice(3).map {|a| a.join}.join(",").reverse
end


# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# The logic of breaking down seemed fairly straight forward, so I really didn't pursue any other options.

# Was your pseudocode effective in helping you build a successful initial solution?
# It was, but I still seem to be having difficulty implementing my logic into functional code.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# I had actually used all the methods in the refactored solution in other challenges. I found that the Ruby documentation is pretty straight forward and was able to figure out what I needed relatively easily. The refactored method worked on the same logic as the original solution, just with a lot less code.

# How did you initially iterate through the data structure?
# By taking the size of the string array and dividing it by 3, the number of places after the comma in a number, I was able to use the times method to iterate over the array the number of times equal to the quotient.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# Yes, totally. Mainly because it seems more logical.


