# Drawer Debugger

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Original Code

class Drawer

  attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    @contents.delete(item)
  end

  def dump  # what should this method return?
    puts "Your drawer is empty."
    @contents = []
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end

end

class Silverware
  attr_reader :type

  # Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    @clean = true
  end

  def clean
    @clean = false
  end

end



# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents

# What will you need here in order to remove a spoon? You may modify the driver code for this error.
spoon = Silverware.new("spoon")
silverware_drawer.add_item(spoon)
raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
spoon.eat
puts spoon.clean #=> this should be false

# DRIVER TESTS GO BELOW THIS LINE

# === Test-1 ===
# ruby-review.rb:105: syntax error, unexpected end-of-input, expecting keyword_end
# Reflection
#            ^

# === Test-2 ===
# ruby-review.rb:27:in `add_item': wrong number of arguments (1 for 0) (ArgumentError)
#   from ruby-review.rb:69:in `<main>'

# === Test-3 ===
# ruby-review.rb:85:in `<main>': undefined method `clean_silverware' for #<Silverware:0x007ff474179b00 @type="sharp_knife", @clean=false> (NoMethodError)

# === Test-4 ===
# ruby-review.rb:95:in `<main>': Your drawer is not actually empty (Exception)

# === Test-5 ===
# ruby-review.rb:100:in `<main>': undefined local variable or method `spoon' for main:Object (NameError)

# === Test-6 ===
# ruby-review.rb:101:in `<main>': You don't have a spoon to remove (Exception)

# === Test-7 ===
# ruby-review.rb:105:in `<main>': undefined method `clean' for #<Silverware:0x007fa8021b8aa8 @type="spoon", @clean=false> (NoMethodError)



# Reflection
# What concepts did you review in this challenge?
# It was nice being able to look at the error messages and know where to look in the code to find the error. The biggest issue, and I think this will always be the case, was the unexpected end-of-input error. Mainly because this type of error does not give you the actual line number in which the error occurs.

# What is still confusing to you about Ruby?
# I think the biggest issue right now is the ability to move from one language to another easily. Because I have spent so much time in JavaScript, I kept making simple syntax errors while trying to write the code in Ruby. Hopefully the skill to move easily between languages will improve as my knowledge of the languages increases.

# What are you going to study to get more prepared for Phase 1?
# Again, I need to spend time review the courses I have previously purchased from udemy.com as well as reviewing the tutorials on lynda.com.



