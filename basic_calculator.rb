def basic_calculator
	puts "Enter a number"
	num1 = gets.chomp.strip.to_f

	puts "Enter an operator (+, -, *, /, **)"
	operator = gets.chomp.strip

	puts "Enter another number"
	num2 = gets.chomp.strip.to_f

	case operator
	when "+"
		res = num1 + num2
	when "-"
		res = num1 - num2
	when "*"
		res = num1 * num2
	when "/"
		res = num1 / num2
	when "**"
		res = num1 ** num2
	else
		print "something went wrong. please try again with a valid operator."
	end

	if res
		print "#{num1} #{operator} #{num2} = #{res}"
	end
end

basic_calculator