# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.
require "./module.rb"

class SimpleCalculator
  include Calculations 
end

class FancyCalculator < SimpleCalculator
  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end
end

# Copy your driver code from the previous exercise and more below:

simplecalculator = SimpleCalculator.new
fancycalculator = FancyCalculator.new
whizbangcalculator = WhizBangCalculator.new 

result = simplecalculator.add(20, 10)

puts "Your method returned:"
puts result
puts

if result == 30
  puts "PASS!"
else
  puts "F"
end

result = fancycalculator.subtract(50, 20)
puts "Your method returned:"
puts result
puts

if result == 30
  puts "PASS!"
else
  puts "F"
end

result = fancycalculator.square_root(16)
puts "Your method returned:"
puts result
puts

if result = 4
  puts "PASS!"
else
  puts "F"
end

result = whizbangcalculator.exponent(3, 4)
puts "Your method returned:"
puts result
puts

if result = 81
  puts "PASS!"
else
  puts "F"
end

result = whizbangcalculator.multiply(15, 3)
puts "Your method returned:"
puts result
puts

if result = 45
  puts "PASS!"
else
  puts "F"
end

