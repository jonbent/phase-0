# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: A number that represents the number of sides of the die
# Output: The number of side of die and a random number
# Steps:
# 1. Verify that the number passed is greater than or equal to 1
# 2. IF the number is less than 1 print out an error message
# 3. IF number is greater than or equal to 1 make the number the number of sides of the die
# 4. Generate a random number greater than 0 and less than or equal to the number of sides

# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new ('Sides must be greater than 0!')
    else
      @sides = sides
    end
  end

  def sides
    @sides
  end

  def roll
    rand(@sides) + 1
  end
end



# 3. Refactored Solution







# 4. Reflection
# What is an ArgumentError and why would you use one?
# An ArgumentError is a message that is displayed when the arguments are wrong. You use them to notify users of the class that an argument is wrong.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# This was the first time that I've used the rand method. It was actually really straight forward.

# What is a Ruby class?
# A class is a blue print for the individual objects.

# Why would you use a Ruby class?
# It creates cleaner and easier to read code.

# What is the difference between a local variable and an instance variable?
# A local variable is only visible within the method it is defined. While an instance variable is visible anywhere there is an instance of the class where the variable was defined.

# Where can an instance variable be used?
# Anywhere there is an instance of the class where the variable was defined.

