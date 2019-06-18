puts "Enter a positive number and see the factorial value!"

def fact(num)
	if num <= 1
		1
	else
		num * fact(num - 1)
	end
end

puts fact(gets.chomp.strip.to_i)