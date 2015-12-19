# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Any integer
# Output: :low if the guess is lower than the answer, :high if the guess is higher than the answer, :correct if the guess is equal to the answer, and true or false depending on if the guess is the correct answer
# Steps:
# 1. Accept an argument and check to see if it is an integer. If not raise error stating it is not an integer, otherwise initialize the argument as answer.
# 2. Check to see if the guess is equal to the answer and return correct, otherwise return low or high based on the value of the guess.
# 3. Check to see if the guessing game is solved. If it is return true otherwise, return false. 


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     raise ArgumentError.new("Expecting Integer!") if !answer.is_a?(Integer)
#     @answer = answer
#   end

#   def guess(users_guess)
#     @guess = users_guess
#     if @users_guess > @answer
#       return :high
#     elsif @users_guess < @answer
#       return :low 
#     end
#     :correct
#   end

#   def solved?
#     @guess == @answer
#   end
# end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    raise ArgumentError.new("Expecting Integer!") if !answer.is_a?(Integer)
    @answer = answer
  end

  def guess(users_guess)
    @guess = users_guess
    @guess > @answer ? :high : @guess < @answer ? :low : :correct
  end

  def solved?
    @guess == @answer
  end
end

# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# An instance variable is almost like the value of an attribute of a real object, while the method is an action that the real object can take. For example, a coin has 2 sides. One of which can be up at a given time if it is resting face down. The method that coin could take is flipping, yet the actual result of that flip is an instance variable.

# When should you use instance variables? What do they do for you?
# You should use instance variables if you want a variable to be accessible to all the methods within a class.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow control is taking conditional statements that allow you to take action when the condition is met. No, I didn't have any issues implementing flow control in this challenge. It was a pretty straight forward if, elsif, else statement.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# Symbols are immutable which means that their value will never change. The immutable quality of Symbols also allows ruby to use the same object every time that specific symbol is referenced which leads to savings in memory.
