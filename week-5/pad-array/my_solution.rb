# Pad an Array

# I worked on this challenge with: Jovanka Niolovski

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? Each method accepts an array , a min_size that takes an optional argument of what the array should be padded with.
# What is the output? (i.e. What should the code return?)New array
# What are the steps needed to solve the problem?
# Iterate over array to to get the array length
# IF min_size is less than or equal to array length, RETURN array
# IF array length is less than the min_size RETURN a new padded array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.length
    return array
  end
  array.concat ([value] * (min_size - array.length))
end

def pad(array, min_size, value = nil) #non-destructive
  array2 = array.clone
  if min_size <= array2.length
    return array2
  end
  array2.concat ([value] * (min_size - array2.length))
end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  array if min_size <= array.length
  array.fill(value, array.length...min_size)
end

def pad(array, min_size, value = nil) #non-destructive
  array if min_size <= array.length
  array.clone.fill(value, array.length...min_size)
end

# 4. Reflection
# Were you successful in breaking the problem down into small steps?
# Yes. Although it seemed like neither of us were that strong at pseudocode, I do feel that we did a pretty good job breaking the problem down.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# I definitely feel that the pseudocode code helped, but I think that our lack of faith in our knowledge of Ruby made it difficult to find a working solution.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# No, we tried many iterations of the problem to find a working solution. Eventually, we just started to write to satisfy the error methods. So writing code to pass the tests.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# I don't think the refactored solution is that different from our original solution, but it is definitely more readable.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# We pretty much left the variable names as they were.

# What is the difference between destructive and non-destructive methods in your own words?
# The main difference between destruction and non-destructive methods is that a destructive method changes the original variable and returns the new value. Whereas, a non-destructive method will return a new variable but the original variable is left in tack.
