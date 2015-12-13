# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  new_arr = []
  source.each do |comp|
    if comp.to_s.include? thing_to_find 
      new_arr << comp
    elsif comp.to_s.include? thing_to_find.upcase
      new_arr << comp
    end
  end
  return new_arr
end

def my_hash_finding_method(source, thing_to_find)
  source.keep_if{|k,v| v == thing_to_find}
  source.keys
end

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# I created a new array with new_arr = [] which created a completely empty array. This 
# array cannot be iterated over, but it can be pushed to or concatenated to. 

  # I iterated over the array given in the argument with each and do, and used include? 
  # to see if the string in each given position of the array contained the thing we 
  # wanted to search for, given in the other argument. I converted them to strings 
  # first because some of them were Fixnums and gave me error messages when I tried to 
  # run it the first time. Whoops. I used the ELSIF condition to account for the 
  # possibility that a letter might be uppercase, since Ruby considers a given uppercase 
  # letter to be different than the same letter in lowercase.

# I used << to push the elements that fit one of the two above conditions onto the end 
# of new_array, and then returned new_array at the end.

  # keep_if is a destructive method for hashes that uses a block of code to delete any 
  # key-value pairs in the hash for which the code block evaluates to false. You'll notice 
  # I gave it two variables but only used one. It wants two because if you give it one, it 
  # won't know whether to use it for the key or the value. It will assume the first is the 
  # key and the second is the value, I just like to use k and v for clarity.

# keys is a method that returns an array made up of all of the keys of the hash that it's 
# given.


# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map! { |element| element.is_a?(Integer) ? element + thing_to_modify : element }
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each { |k,v| source[k] += thing_to_modify }
end

# Identify and describe the Ruby method(s) you implemented.
# For the my_array_modification_method! I used the map method.  The map returns a new array with the results of running the code within the block once for every element in the array. By adding the !(bang) to the map method, the original array is altered in place instead of creating a new array. In the above method the block takes in the element of the array and checks to see if it is an Integer. If true the argument thing_to_modify is added to the element and passed to the array, if false the element only is passed to the array.
#
# For the my_hash_modification_method! I used the each method. The each method method calls the code in the block once for each key in the hash, passing the key-value pair as parameters. In the above method the value of the hash is increased by the value of the argument thing_to_modify.
#
# No real tricks to offer other than I think the blog post about Ruby Docs for Newbies was fairly insightful. A lot of the time I find that I just keep trying methods I think may be applicable until I'm able to pass the test. Probably not the best way to do it, but it works for now.


# Person 3
def my_array_sorting_method(source)
  source.sort_by {|x| x.to_s}
end

def my_hash_sorting_method(source)
   source.sort_by{|x, y| y}
end

=begin
# Identify and describe the Ruby method(s) you implemented.
I used the method sort_by.  This method takes the input and sorts it by a code block you specify.
You can see the syntax above.  The variables in the ||'s are the parameters and the code after that is telling the method how to sort.  It could be almost anything depending on how you want to sort and what block of code you use.  In the first example I needed to turn the integers into strings first so sort would be able to compare everything in the array.  In the second I needed to sort by the hash values not the keys.
I'm sorry but I have no tricks for the Ruby Docs.  I have used this method enough and seen enough examples to know it.  The docs are very frustrating to use.
=end


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
