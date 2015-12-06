# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home." 

# This error was analyzed in the README file.

# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The error is occurring in the errors.rb file.
# 2. What is the line number where the error occurs?
# The error occurs on line 170.
# 3. What is the type of error message?
# This is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter says that there was an unexpected end-of-input, and it was expecting the keyword end.
# 5. Where is the error in the code?
# The interpreter is expecting an "end" at the end of the code.
# 6. Why did the interpreter give you this error?
# In Ruby you need to have the keyword "end" to close both the definition and the while loop. This error would not occur if the code was:
# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
#   end
# end

# --- error -------------------------------------------------------

south_park = nil

# 1. What is the line number where the error occurs?
# The error occurs on line 41.
# 2. What is the type of error message?
# This is a NameError.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says that there is an undefined local variable or method.
# 4. Where is the error in the code?
# The interpreter is expecting "south_park" to be assigned a value or be defined as a method.
# 5. Why did the interpreter give you this error?
# In Ruby you have to assign a variable a value or define a method. This error would not occur if the code was:
# south_park = nil

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# The error occurs on line 57.
# 2. What is the type of error message?
# This is a NoMethodError.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says that there is an undefined method 'cartman'.
# 4. Where is the error in the code?
# The interpreter is expecting cartman() to be defined as a method.
# 5. Why did the interpreter give you this error?
# Ruby expects that a method that receives a variable to be defined. This error would not occur if the code was:
# def cartman(var1)
# end

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
# The error occurs on line 74.
# 2. What is the type of error message?
# This is an ArgumentError.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says the the wrong number of arguments (1 for 0).
# 4. Where is the error in the code?
# The interpreter is not expecting to receive an argument for the cartmans_phrase method.
# 5. Why did the interpreter give you this error?
# In ruby methods can only receive arguments if it is the definition. This error would not occur if the code was:
# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says('Well I\'ve been lickin\' this carpet for 3 whole hours and I don\'t feel like a lesbian.')

# 1. What is the line number where the error occurs?
# The error occurs on line 97.
# 2. What is the type of error message?
# This is an ArgumentError.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says the the wrong number of arguments (0 for 1).
# 4. Where is the error in the code?
# The interpreter was expecting to receive an argument for the cartman_says method.
# 5. Why did the interpreter give you this error?
# In Ruby when a method is defined to accept an argument it requires that an argument is passed when the method is called. This error would not occur if the code was:
# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says('Well I\'ve been lickin\' this carpet for 3 whole hours and I don\'t feel like a lesbian.'')

# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Stan')

# 1. What is the line number where the error occurs?
# The error occurs on line 122.
# 2. What is the type of error message?
# This is an ArgumentError.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says the the wrong number of arguments (1 for 2).
# 4. Where is the error in the code?
# The interpreter was expecting to receive 2 arguments for the cartmans_lie method.
# 5. Why did the interpreter give you this error?
# In Ruby when a method is defined to accept multiple arguments ti requires that the same number of arguments are passed when the method is called. This error would not occur if the code was:
# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Stan')

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# The error occurs on line 147.
# 2. What is the type of error message?
# This is a TypeError.
# 3. What additional information does the interpreter provide about this type of error?
# The Interpreter says that String can't be coerced into Fixnum.
# 4. Where is the error in the code?
# The Interpreter is telling us that 5 can't do "Respect my authoritay!"
# 5. Why did the interpreter give you this error?
# In Ruby you can multiple a string by an integer because you are basically saying do string x number of times, but you can't multiple an integer by a string because an integer can't do a string. This error would not occur if the code was:
# "Respect my authoritay!" * 5

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/2

# 1. What is the line number where the error occurs?
# The error occurs on line 163.
# 2. What is the type of error message?
# This is a ZeroDivisionError.
# 3. What additional information does the interpreter provide about this type of error?
# The Interpreter says divided by 0.
# 4. Where is the error in the code?
# The Interpreter is saying that you can't divide by 0.
# 5. Why did the interpreter give you this error?
# In Ruby, as in most programming languages, you can not divide an integer by zero. If you used a float than the answer would be Infinity. This error would not occur if the code was:
# amount_of_kfc_left = 20/2

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# The error occurs on line 179.
# 2. What is the type of error message?
# This is a LoadError.
# 3. What additional information does the interpreter provide about this type of error?
# The Interpreter says cannot load such file -- /Users/Onyx/DBC/phase0/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
# The Interpreter is saying that it cannot load the file "cartmans_essay.md" because the file could not be found within the directory.
# 5. Why did the interpreter give you this error?
# In Ruby when require_relative is called the file needs to be located within the directory specified. This error would not occur if the file "cartmans_essay.md" was an actual file within the current directory.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# Most of the error where fairly straight forward to read, however, the error involving the missing keyword was tricky because it took awhile to recognize where the error was actually occurring.

# How did you figure out what the issue with the error was?
# Fortunately, the error type was fairly descriptive in determining the error.

# Were you able to determine why each error message happened based on the code?
# Yes

# When you encounter errors in your future code, what process will you follow to help you debug?
# Although it seemed extremely repetitive to answer the same questions for every error message, it did give me a good way of thinking about the error. I will probably use a similar method in the future.