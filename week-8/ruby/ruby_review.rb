# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
# input: an array of integers
# output: a fizzbuzz array were integers with a multiple of 3 are replaced by "fizz", integers with a multiple of 5 are replaced with "buzz", and integers with a multiple of 15 are replace with "fizzbuzz"
# Iterate over an array of integers
# Check to see if integer is a multiple of 3 and replace integer in array with 'Fizz' if it is.
# Check to see if integer is a multiple of 5 and replace integer in array with 'Buzz' if it is.
# Check to see if integer is a multiple of 15 and replace integer in array with 'FizzBuzz' if it is.
# Otherwise, keep the existing integer.


# Initial Solution

# def super_fizzbuzz(array)

#   array.map do |number|
#     if number % 15 === 0
#       'FizzBuzz'
#     elsif number % 3 === 0
#       'Fizz'
#     elsif number % 5 === 0
#       'Buzz'
#     else number
#     end
#   end

# end

# Refactored Solution

def super_fizzbuzz(array)

  array.map do |number|
    
    case
      when number % 15 === 0 then 'FizzBuzz'
      when number % 3 === 0 then 'Fizz'
      when number % 5 === 0 then 'Buzz'
      else number
    end
  end

end

# Reflection

# What concepts did you review or learn in this challenge?
# After spending some time with JavaScript it was nice to review iterating over an Array in Ruby. Last week while writing my blog post, I was struck with a sudden case of amnesia and totally forgot how to iterate through a Ruby Array. This caused me great concern, so it was nice to review.

# What is still confusing to you about Ruby?
# If I say everything, will I get in trouble? Seriously, I think the most confusing thing is keeping all the syntax straight. I feel that a lot of this confusion comes from my lack of experience in Ruby and the limited amount of time I've been using it.

# What are you going to study to get more prepared for Phase 1?
# As I stated earlier, this week has made me really scared about Phase 1; I feel completely unprepared. I am more of a visual learner and a lot of the information for Ruby and JavaScript, so far, has been from reading. So from now until the start of Phase 1, I plan to review tutorials I have purchased through Udemy as well as tutorials on Lynda.com.




