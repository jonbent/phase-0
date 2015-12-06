puts "What is your first name?"
first_name = gets.chomp
puts "Ok " + first_name.capitalize + ", what is your middle name?"
middle_name = gets.chomp
puts "And finally " + first_name.capitalize + ", what is your last name?"
last_name = gets.chomp
puts "Well " + first_name.capitalize + ", " + first_name.capitalize + " " + middle_name.capitalize + " " + last_name.capitalize + " is a pretty swell name."
puts " "
puts "Alright " + first_name.capitalize + ", now I need to know your favorite number?"
favorite_number = gets.chomp
bigger_number = favorite_number.to_i + 1
puts first_name.capitalize + " " + favorite_number.to_s + " is a pretty lucky number, but " + bigger_number.to_s + " is even more lucky! Because bigger is always better " + first_name.capitalize + "."

# How do you define a local variable?
# A local variable stores the variable's value in the computers memory. When the variable name is used it points to the value stored in the computer's memory.

# How do you define a method?
# A method is a set of expressions that return a value and can be called multiple times in a program. Typically methods are created anytime you find yourself repeating the same code.

# What is the difference between a local variable and a method?
# Although both variables and methods can be used multiple times in a program variables will always have the same value unless you implicitly change it with the "=" sign. Whereas the same method can return multiple values based on the parameters it is passed.

# How do you run a ruby program from the command line?
# ruby file-name.rb

# How do you run an RSpec file from the command line?
# rspec spec-file-name.rb

# What was confusing about this material? What made sense?
# Working through the material seemed like another refresher from what we previously learned on Codecademy. It all seemed to make sense and I know that the more I work with Ruby the more comfortable I will be with it.