# I worked on this challenge by myself.


# Your Solution Below

def valid_triangle?(a, b, c)
  if a + b > c && a < b + c && a + c > b
    return true
  end
  false
end
