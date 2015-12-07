# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Sharon Claitor.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: [1,2,3]
# Output: 6
# Steps to solve the problem.
# Iterate over each variable in the array
# Add each variable by a new variable and store new value
# Return total value of new variable

# 1. total initial solution
def total(array)
  sum = 0
  array.each do |i|
    sum += i
  end
  sum
end

# 3. total refactored solution
def total(array)
  array.reduce(:+)
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: sentence_maker(["i", "want", "to", "go", "to", "the", "movies"])
# Output: "I want to go to the movies."
# Steps to solve the problem.
# Iterate over each variable in the array
# Combine each variable of the array into a new array
# Return the value of the new array.

# 5. sentence_maker initial solution
def sentence_maker (array)
  string = ""
  array.map do |i|
    i = i.to_s
      if i != array.last
      i += " "
      end
    string += i
  end
  string.capitalize + "."
end

# 6. sentence_maker refactored solution
# def sentence_maker (array)
  array.join(' ').capitalize << "."
# end

