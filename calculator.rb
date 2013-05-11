def run
	puts "Welcome to my basic calculator application!"
	puts "Please determine your desired operation. Enter + for addition, - for subtraction, * for multiplication, / for division or ** for raising to an exponent."
	print "> "
	operation = gets.chomp

	if operation == "+"
		first_action = "adding"
		second_action = "adding to it"
	elsif operation == "-"
		first_action = "subtracting"
		second_action = "subtracting from it"
	elsif operation == "*"
 	 first_action = "multiplying"
  	second_action = "multiplying it by"
	elsif operation == "/"
		first_action = "dividing"
		second_action = "dividing it by"
	elsif operation == "**"
		first_action = "raising to an exponent"
		second_action = "taking as the exponent to raise it to"
	else
		puts "\n Please enter one of +, -, *, / or ** \n \n "
		run
	end

	puts "Now what is the first number you will be #{first_action}?"
	print "> "
	num1 = gets.chomp.to_i
	puts "Now what is the second number you will be #{second_action}?"
	print "> "
	num2 = gets.chomp.to_i

	if operation == "+"
		result = num1 + num2
	elsif operation == "-"
		result = num1 - num2
	elsif operation == "*"
		result = num1 * num2
	elsif operation == "/"
		result = num1 / num2
	elsif operation == "**"
		result = num1 ** num2
	end

	puts "The result is #{result}"
	puts "Would you like to crunch some more numbers? y/n"
	print "> "
	again = gets.chomp

	if again == "y" or "yes"
		run
	else
		puts "Have a great day!!!"
	end
end

run