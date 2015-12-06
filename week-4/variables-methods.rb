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