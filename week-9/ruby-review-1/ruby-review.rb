# Reverse Words


# I worked on this challenge with: Sharon Claitor.
# This challenge took me [#] hours.

# Pseudocode

# Define method that accepts a string as an argument
#   Split string
# IF the length of the string doesn't equal zero
#   Iterate through string and reverse each word in     place
# Else return empty string

# Initial Solution

# def reverse_words(string)
#   string = string.split
#   if (string.length != 0) 
#     string.each do |x|
#       x.reverse!
#     end
#     p string.join' '
#   else 
#     ""
#   end
# end
# reverse_words("This is a test")
# reverse_words("")

# Refactored Solution

def reverse_words(string)
  string = string.split
  if (string.length != 0) 
    string.each {|x| x.reverse!}
    p string.join' '
  else 
    ""
  end
end

# Reflection
# What concepts did you review in this challenge?
# I could not remember how to iterate through an array in ruby and originally wrote a JavaScript for loop. So we reviewed iterating through an array, otherwise, we were both pretty surprised how much we still remembered.

# What is still confusing to you about Ruby?
# I think the biggest issue right now is the ability to move from one language to another easily. Because I have spent so much time in JavaScript, I kept making simple syntax errors while trying to write the code in Ruby. Hopefully the skill to move easily between languages will improve as my knowledge of the languages increases.

# What are you going to study to get more prepared for Phase 1?
# Again, I need to spend time review the courses I have previously purchased from udemy.com as well as reviewing the tutorials on lynda.com.