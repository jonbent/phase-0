#Attr Methods

# I worked on this challenge by myself.

# I spent [1] hours on this challenge.


class NameData

  attr_reader :name

  def initialize
    @name = "Todd"
  end

end


class Greetings

  def initialize
    @my_name = NameData.new
  end

  def hello
    puts "Hello #{@my_name.name}! How wonderful to see you today"
  end

end

greet = Greetings.new
greet.hello

# Reflection

# --RELEASE_1--
# What are these methods doing?
# Profile is initialized with hard coded variables. The methods first read the original hard coded variable then they accept a new variable and assign it to the corresponding instance variable.

# How are they modifying or returning the value of instance variables?
# Using the change_my_age= syntax, for example, allows for the new variable to be set using an = sign instead of the standard argument format. Then the print_info method is called to puts the instance variables. Because this method is called after the re-assignment methods are called, the print_info method returns the updated values of the instance variables.

# --RELEASE_2--
# What changed between the last release and this release?
# The what_is_age method call was removed and replaced with attr_reader :age which allows us to read the instance variable of age outside of the class.

# What was replaced?
# The method what_is_age was replace with attr_reader :age.

# Is this code simpler than the last?
# Yes, it helps to reduce the size and clutter of the class.

# --RELEASE_3--
# What changed between the last release and this release?
# The change_my_age= method was removed and replace with the attr_writer :age which allows us to update the instance variable of age outside of the class.

# What was replaced?
# The method change_my_age= was replace with attr_writer :age.

# Is this code simpler than the last?
# Yes, it helps to reduce the size and clutter of the class.

# --FINAL REFLECTION--
# What is a reader method?
# A reader method takes the place of a method that would usually return the value assigned to an instance variable.

# What is a writer method?
# A writer method would work the same as a method that is meant to take in an argument and rewrite an existing instance variable.

# What do the attr methods do for you?
# The attr methods allow you to read (attr_read), write (attr_write), or read/write (attr_accessor) the value of an instance variable outside of a class.

# Should you always use an accessor to cover your bases? Why or why not?
# No, it is generally not a good idea to always use attr_accessor. Mainly because you don't always want to allow that amount of access to other methods or classes within your program.

# What is confusing to you about these methods?
# Nothing was all that confusing as the names, with the exception of attr_accessor, pretty much describe what the will be doing.
