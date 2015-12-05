# Calculate a Grade

# I worked on this challenge with: Lauren Reid.


# Your Solution Below
def get_grade(num)
  if num >= 90
    return 'A'
  elsif num < 90 && num >= 80
    return 'B'
  elsif num < 80 && num >= 70
    return 'C'
  elsif num < 70 && num >= 60
    return 'D'
  else
    return 'F'
  end
end