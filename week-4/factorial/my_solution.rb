# Factorial

# I worked on this challenge with Sharon Claitor.


# Your Solution Below
def factorial(number)
  product = 1
    while number >= 1
      product *= number
      number = number - 1
    end
  product
end
