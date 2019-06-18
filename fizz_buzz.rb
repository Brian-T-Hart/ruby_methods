def fizz_buzz(num1, num2)
	(1..100).each { |x|
	
	if x % (num1 * num2) == 0
		puts "fizzbuzz"

	elsif x % num2 == 0
		puts "buzz"

	elsif x % num1 == 0
		puts "fizz"

	else
		puts "#{x}"
		
	end
}
end

fizz_buzz(3,5)


# Another way to do it using .times
def fizz_buzz_2(num1, num2)
	num = 0

	100.times do
		num += 1
		if num % (num1 * num2) == 0
			puts "FizzBuzz"
		elsif num % num2 == 0
			puts "Buzz"
		elsif num % num1 == 0
			puts "Fizz"
		else
			puts num
		end
	end
end