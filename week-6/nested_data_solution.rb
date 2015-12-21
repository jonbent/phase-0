# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
# p array[1][2][0]
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
# p hash [outer:[inner:["almost"]]]
# p hash (outer:)(inner:)("almost")(3)
# p hash (outer:(inner:("almost"(3))))
p hash [:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# number_array.flatten!.map! do |item|
#   item = item+5
# end

# number_array.map! do |item|
#   if item.is_a? Integer
#     item=item+5
#   else
#     item.map! do |num|
#       num=num+5
#     end   
#   end
# end

# Refactor

number_array.map! { |item| item.is_a?(Array) ? item.map! { |num| num + 5} : item + 5 }

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def addly (array)
  array.map! do |item|
    if item.is_a? String
      item + "ly"
    else addly(item)
    end
  end
end

puts addly(startup_names)


# Reflection

# What are some general rules you can apply to nested arrays?
# You need to be careful about what element you select; it took us a while to figure out the exact index placement of each item in the first release.  

# What are some ways you can iterate over nested arrays?
# It seems as if using enumerables (such as map and each) is effective for nested arrays.  In our example, we used map!.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# We really didn't use anything new and just stuck with .map!. Mainly because it did exactly what we wanted and made it easy to read.


