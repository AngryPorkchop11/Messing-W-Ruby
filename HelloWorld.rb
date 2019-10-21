# def hi(name = "World")
#   puts "Hello #{name.capitalize}!"
# end
# hi
# hi("mat")
# hi "Mat"
# hi "MAT"
#THIS IS A METHOD

"""
GREETER CLASS
"""
class Greeter
  def initialize(name = "World")
    @name = name
  end
  def say_hi
    puts "Hi #{@name}!"
  end
  def say_bye
    puts "Bye #{@name}, come backs soon."
  end
end

greeter = Greeter.new("Mathew")
greeter.say_hi
greeter.say_bye
