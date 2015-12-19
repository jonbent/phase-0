# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: A random string from the array
# Steps:
# 1. Accept an array of strings as an argument and check to see if the array is empty. An empty array will raise and ArgumentError.
# 2. Assign the length of the array as the number of sides of the die.
# 3. Randomly select one of the strings and return the value when the die is rolled.

# Initial Solution

# class Die
#   def initialize(labels)
#     raise ArgumentError.new("Empty array.") if labels.length == 0
#     @sides = labels
#   end

#   def sides
#    @sides.length
#   end

#   def roll
#     @value = 0
#     @value = rand(@sides.length)
#     @sides[@value]
#   end
# end

# Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError.new("Empty array.") if labels.length == 0
    @sides = labels
  end

  def sides
   @sides.length
  end

  def roll
    @sides[rand(@sides.length)]
  end
end

# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# The biggest difference in the implementation was that I was dealing with strings as opposed to integers, but the logic really stayed the same.

# What does this exercise teach you about making code that is easily changeable or modifiable? 
# That it is much easier to be able to simply modify the code then have to completely rewrite it.

# What new methods did you learn when working on this challenge, if any?
# I didn't really learn any new methods, but I had issues because I was using a prompt from Sublime and instead of calling the rand method I was trying to call random. It took me awhile to track down the typo.

# What concepts about classes were you able to solidify in this challenge?
# That classes can be an extremely powerful tool.
