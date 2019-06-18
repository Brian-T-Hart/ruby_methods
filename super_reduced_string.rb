# this method will loop through a string and remove double letters until no more double letters exist next to each other.

def superReducedString(str)
	my_result = str
	doubles_exist = true

	my_double_letters = ('a'..'z').to_a.map{ |letter| letter + letter}
	
	while doubles_exist do
		my_double_letters.each { |x|
			my_result = my_result.gsub("#{x}" , "")
		}

		doubles_exist = false

		my_double_letters.each { |x| 
			if my_result.match("#{x}")
				doubles_exist = true
			end
		}
	end

	if my_result == ""
		my_result = "Empty String"
	else
		my_result
	end
end

puts superReducedString("gggrrreeeaaat jooobbb!")