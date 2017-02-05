# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

require "./module.rb"
require "./simple_calculator.rb"
require "./fancy_calculator.rb"

# Copy your driver code from the previous exercise below:

simplecalculator = SimpleCalculator.new
fancycalculator = FancyCalculator.new

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

if result == 4
  puts "PASS!"
else
  puts "F"
end