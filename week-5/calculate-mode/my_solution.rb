# Calculate the mode Pairing Challenge

# I worked on this challenge with: Gary Wong

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array
# What is the output? (i.e. What should the code return?) An array with most frequent value
# What are the steps needed to solve the problem?
# 1. Take Array and convert to hash with default value of 1
# 2. Add 1 to value for any multiple occurrences (:key)
# 3. Compare which value are highest
# 4. return an array with highest value representing multiple occurrences


# 1. Initial Solution

def comparer(hash)
  most_freq = []
  max_value = hash.values.max 
  hash.each do |key,value|
    if value == max_value
      most_freq << key
    end
  end 
    most_freq
end

def mode(array)
  counter = Hash.new 0
  array.each do |array|
    counter[array] += 1
  end
    comparer(counter)
end


# 3. Refactored Solution #1
def comparer(hash)
  most_freq = []
  hash.each { |key,value| most_freq << key if value == hash.values.max }
  most_freq
end

def mode(array)
  counter = array.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  comparer(counter)
end

# 3. Refactored Solution #2
def mode(array)
  counter = array.reduce(Hash.new(0)) { |h,k| h[k] +=1; h }
  counter.select { |k,v| v == counter.values.max }.keys
end


# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# We chose to use a hash as we could use the array element as the key and increase the value if the key appeared more than once in the array.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# Yes, I felt that we had a fairly strong knowledge of the logic for the pseudocode, but still found it a challenge to implement.

# What issues/successes did you run into when translating your pseudocode to code?
# Initially we had difficulty iterating through the array and updating the value of the key. Once we were able to figure that out, we got hung up on the logic to compare the hash values and return a new array of the hash keys.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# In our original solution, we used each to iterate through the array and hash. In the first version of the refactored we used inject to iterate over the array and each to iterate over the hash. And in the finally refactoring we used reduce instead of inject to iterate over the array and select to iterate over the hash. I felt that the refactored methods are easier to read and therefore easier to understand and implement.
