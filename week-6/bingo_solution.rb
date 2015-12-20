# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #create an array of the letters (b, i, n, g, o)
  #generate a random number between 0 and 4 and use it to access the letter at that index
  #generate a random number between 1 and 100
  #combine randomly generated letter and number and output to the console

# Check the called column for the number called.
  #iterate over the board array and check to see if the randomly generated number exists in the randomly generated index

# If the number is in the column, replace with an 'x'
  #IF the randomly generated number exists at the randomly generated index replace value with a "X"

# Display a column to the console
  #iterate over the board array and display each value at the randomly generated index

# Display the board to the console (prettily)
  #iterate over the board array and display each index value on a separate line to the console

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     @letters = ['B', 'I', 'N', 'G', 'O']
#     @rand_index = rand(@letters.length)
#     @number = rand(1...100)
#     p @letters[@rand_index] + @number.to_s
#   end

#   def check
#     @bingo_board.each do |i|
#      if i[@rand_index] == @number
#         i[@rand_index] = "X"
#       end
#     end
#     puts "______________________"
#     @bingo_board.each {|i| p i}
#     puts "______________________"
#   end

# end

# Refactored Solution
class BingoBoard
  def initialize(board)
    @bingo_board = board
  end

  def call
    letters = ['B', 'I', 'N', 'G', 'O']
    @rand_index = rand(5)
    @number = rand(1...100)
    p letters[@rand_index] + @number.to_s
  end

  def check
    @bingo_board.each { |i| i[@rand_index] == @number ? i[@rand_index] = 'X' : i[@rand_index] }
    @bingo_board.each do |index|
      puts "______________________"
      puts index.each {|value| value}.join " | "
    end 
    puts "______________________"
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check

#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# For some reason it seemed difficult to start pseudocoding this challenge. Once I got started, and I was able to break apart the logic, it did seem to get easier.

# What are the benefits of using a class for this challenge?
# The benefit of using a class in this challenge is that it combines all the related methods for bingo in one object.

# How can you access coordinates in a nested array?
# [][] typically or the .at() function.

# What methods did you use to access and modify the array?
# I used the each method to access and modify the array.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# I didn't use any new methods, so there really wasn't a need to search the Ruby docs.

# How did you determine what should be an instance variable versus a local variable?
# I originally made every variable an instance variable, but once I refactored my solution I decided that only variables that were accessed by multiple methods needed to be instance variable and the remaining could be local variables. 

# What do you feel is most improved in your refactored solution?
# I really didn't change much of the initial solution during refactoring. I decided that it was fairly straight forward to begin with. If I had to choose anything I just like the refactored output better; it looked prettier.

