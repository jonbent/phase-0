# 5.6 Create Accountability Groups Challenge

# I will be happy if it outputs the names in groups. Based on time, I have to stop once it works.

# 0. Pseudocode

# What is the input? An array consisting of names
# What is the output? (i.e. What should the code return?) A hash of arrays with each key containing the names and the value representing the accountability group number
# What are the steps needed to solve the problem?
# 1. Create a method that accepts an array of strings
# 2. Randomize the order of the array
# 3. Create an array of arrays with the arrays containing 5 names
# 4. Create a hash from the new array of arrays
# 5. Iterate over the hash and add 1 to the value of the key
# 6. Return the hash broken down by value and key

# 1. Initial Solution
def print(counter)
  counter.each do |k,v|
    p "Accountability Group\# #{v}: #{k}"
  end
end

def acct_groups(names)
  groups = names.shuffle.each_slice(5).to_a
  counter = groups.reduce(Hash.new(0)) { |h,v| h[v] += 0; h }
  x = 1
  while x <= counter.length
    counter.each do |k,v|
      v = x + v
      counter[k] = v
      x += 1
    end
  end
  print(counter)
end

acct_groups(["Alexander Nelson","Karen Ball","Christopher Bovio","Gino Paul Capio","Jonathan Chin","Claire Samuels","Ray Curran","David Louie","David Spivey","Max Davis","Devin Mandelbaum","Afton Downey","Jordan Fox","Rebecca Gahart","Gary Wong","Hodges Glenn","Everett Golden","Christopher Graf","Alana Hanson","LeeAnne Hawley","Sabri Helal","Thomas Huang","Jeff Schneider","Jillian Dunleavy","Kevin Huang","Khamla Phimmachack","KT Khoo","Andrew Kim","Joseph Kim","Michal Klimek","Nathan Knockeart","Brigitte Kozena","Donald Lang","Tiffany Larson","Liam Mackey","Johanna Lonn","Tyler McKenzie","Katie Meyer","Meagan Munch","Lucas Nagle","Lydia Nash","Jovanka Nikolovski","James O\'Neal","Greg Park","Patrick Oliphant","Peter Lowe","Lauren Reid","Roche Janken","David Rothschild","Susan Savariar","Kurt Schlueter","Sharon Claitor","Marshall Sosland","Catie Stallings","Steven King","Eric Tenza","Timur Catakli","Todd Seller","Dan Turcza","Lindsey Ullman","Raj Vashist","Violet Dang","Chris Wong","Angelika Yoder","Michelle Zulli"])


# What was the most interesting and most difficult part of this challenge?
# I found it interesting that I was able to re-purpose some code I had used in a prior challenge. But I'm still really struggling with being able to implement my logic into working code.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# I feel that I'm getting better breaking down the problem with pseudocode, this really issue is being able to implement the thought process and actually solve the problem.

# Was your approach for automating this task a good solution? What could have made it even better?
# No, I don't feel that this was the best way of automating this process. Adding additional logic that would allow this to work better with varying sized lists as well as the ability to add or delete members of an accountability group would have made this better.

# What data structure did you decide to store the accountability groups in and why?
# I chose a hash because I was able to use the names array as the key and the value as the accountability group number.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# Unfortunately due to time constraints and the fact I needed to complete the other challenges, I was unable to refactor my original solution.


