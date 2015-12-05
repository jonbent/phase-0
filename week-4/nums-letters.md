####What does `puts` do?   
`puts` outputs to the terminal whatever follows it; or according to DBC's explanation: `puts` returns nil and prints the output to the console with a new line.   

####What is an integer? What is a float?   
An integer is any number without a decimal point and a float is any number with a decimal point.   

####What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?   
Integer division returns integers and float division will return a float.  If you where to divide 9/2 using float division you would get 4.5 or 4 with a remainder of 5. With integer division there is no remainder so the number is rounded down. So with the above example of 9/2, using integer division the answer would be 4.   
####Hours in a year
```ruby
puts 24 * 365
```   
####Minutes in a decade   
```ruby
puts (60 * 24) * ((365 * 10) + 2)
```