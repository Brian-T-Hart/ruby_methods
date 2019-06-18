def sum_of_multiples_of_3_and_5 (num)
	sum = 0

	(1..num).each {|x|
		if x % 3 == 0
			sum += x
		end
	}

	puts "Sum: #{sum}"
end

sum_of_multiples_of_3_and_5(100)