# Create List Method
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# create a Hash 
# add keys based on the string arguments 
# set default quantity
# print the list to the console [can you use one of your other methods here?]
# output: Hash ( because we'll need item as key and quantity as value)

# Add Item Method
# input(arguments): item name and optional quantity
# steps:  add the item name as a key and the quantity as a value 
# output: print out key and value pair or maybe no output

# Remove Item Method
# input: key that we want to remove (String format)
# steps: delete the key and value pair that matches the string argument 
# output: print out key and value pairs in the list 

# Update Item Method
# input: key that we want to update (string format)
# steps: reassigning the value to that key 
# output: print out key and value pair 

# Print List Method
# input: passing in the Hash 
# steps: iterate through the hash and print each key and value 
# output: Key and value pairs 



def create_list(food_items) 
  food_list = Hash.new
end

def add_item(list, food, quantity)
    list[food] = quantity
    print(list)
end

def remove_item(list, food)
  list.delete(food)
  print(list)
end

def update(list,food, quantity)
  list[food] = quantity
  print(list)
end

def print(list)
  list.each do |key,value|
    p "#{key}: qty. #{value}" 
  end
end



list_of_food = create_list("")
add_item(list_of_food,"Lemonade", 2)
add_item(list_of_food,"Tomatoes", 3)
add_item(list_of_food,"Onions", 1)
add_item(list_of_food,"Ice Cream", 4)
remove_item(list_of_food, "Lemonade")
update(list_of_food, "Ice Cream", 1)


# What did you learn about pseudocode from working on this challenge?
# I ended up not having a pair for this session, so my guide Morgan became my pair. Pseudocode is not my strong point as I tend not to make lists or outlines and I just jump in. Morgan was doing all the typing during our session so it was nice to be able to see how she was transcribing what I was saying into pseudocode. I learned a lot about what best practice methods to use while writing it.

# What are the trade offs of using Arrays and Hashes for this challenge?
# I don't think that using an array would have been useful in this challenge as you would have to have an array of arrays to store both a string and an integer. You would then have to remember at what index the item array was at. Using a hash in this challenge made total sense because the item name was the key and the quantity was the value.

# What does a method return?
# A method in Ruby will implicitly return the last expression or a value that you preface it to return.

# What kind of things can you pass into methods as arguments?
# You can almost pass anything into a method as an argument. You can pass strings, integers, floats, arrays, hashes.

# How can you pass information between methods?
# You simply call the other method within your method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# Well as I said previously, I really got a better understanding on pseudocode. I also got a better understanding of passing arguments into methods. I'm not sure how much of this was because I was pairing with my guide or that I'm able to wrap my head around the challenge better, but all-in-all, this was a great session.








