def solve_simple_linear_equation
	puts "Enter a linear expression in the form mx+b or mx-b. The calculator will give the value of x that makes the expression = 0."
	eq = gets.gsub(" ", "").downcase.match(/^\-?\d+x(\+|\-)\d+$/).to_s

	if eq == ""
		puts "An error occurred. Please try again!"
	else

	eq = eq.split("x")
	a = eq[0].to_f
	operator = eq[1][0]
	c = eq[1][1..-1].to_f

	puts "a: #{a}, operator: #{operator}, c: #{c}"

	opposite = operator == "-" ? 1 : -1
	answer = ( opposite * c / a)
	puts "Answer: #{answer}"
	end
end

solve_simple_linear_equation