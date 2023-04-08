puts "Welcome to the pizza ordering program!"
puts "-------------------------------------"
puts "We have small, medium, and large pizzas available."
puts "Pepperoni topping is available for small and medium pizzas at an extra cost."
puts "Extra cheese topping is available for any size pizza at an extra cost."
puts "-------------------------------------"

# Ask the user for their order
size = ""
pepperoni = ""
extra_cheese = ""

# Ask the user for their order
loop do
  puts "What size pizza would you like? (small, medium, large)"
  size = gets.chomp.downcase
  break if ["small", "medium", "large"].include?(size)
  puts "Invalid input. Please enter 'small', 'medium', or 'large'."
end

loop do
  puts "Would you like pepperoni topping? (yes or no)"
  pepperoni = gets.chomp.downcase
  break if ["yes", "no"].include?(pepperoni)
  puts "Invalid input. Please enter 'yes' or 'no'."
end

loop do
  puts "Would you like extra cheese topping? (yes or no)"
  extra_cheese = gets.chomp.downcase
  break if ["yes", "no"].include?(extra_cheese)
  puts "Invalid input. Please enter 'yes' or 'no'."
end

# Calculate the final bill based on the user's order
price = 0
case size
when "small"
  price = 15
  price += 3 if pepperoni == "yes"
when "medium"
  price = 22
  price += 5 if pepperoni == "yes"
when "large"
  price = 30
end

if extra_cheese == "yes"
  price += 6
end

# Print out the final bill
puts "Your total bill is: RM#{price}"