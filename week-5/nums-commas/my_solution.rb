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
  



# 3. Reflection
