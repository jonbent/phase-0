# Your Names
# 1) Todd Seller
# 2) Zander Nelson

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

 raise ArgumentError.new("#{item_to_make} is not a valid input") if library.has_key?(item_to_make) == false 

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  number_to_make = num_of_ingredients / serving_size

  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{number_to_make} of #{item_to_make}"
  else
    return "Calculations complete: Make #{number_to_make} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
# What did you learn about making code readable by working on this challenge?
# I learned that sometimes creating clean readable code takes precedence over short code.

# Did you learn any new methods? What did you learn about them?
# I was introduced to the include and fetch methods, although we ultimately abandoned both for an even more simplistic approach.

# What did you learn about accessing data in hashes?
# I was reminded of the easiest way to access the value. Our initial approach ended up being one that was over thought and there was a much more simplistic way. 

# What concepts were solidified when working through this challenge?
# I felt that I was really able to build on the fundamentals of reading and understanding the code.