# The caesar cipher takes a string and encodes it by shifting the alphabet k units
def caesar_cipher(s,k)
	lowercase_letters = ("a".."z").to_a
	uppercase_letters = ("A".."Z").to_a
	encoded_string = ""

	# check letter for lowercase, uppercase, or symbol
	x = s.length - 1
	(0..x).each { |num|
		letter =  s[num]
		
		# check if lowercase and if so, encode letter
		if lowercase_letters.include? letter
			letter_index = lowercase_letters.find_index letter
			letter_index += k
			if letter_index >= 26
				letter_index = letter_index % 26
			end
			coded_letter = lowercase_letters[letter_index]
			encoded_string += coded_letter

		# check if uppercase and if so, encode letter
		elsif uppercase_letters.include? letter
			letter_index = uppercase_letters.find_index letter
			letter_index += k
			if letter_index >= 26
				letter_index = letter_index % 26
			end
			coded_letter = uppercase_letters[letter_index]
			encoded_string += coded_letter

		# if not lowercase or uppercase add the symbol to the encoded string
		else
			encoded_string += letter
		end
	}

	puts encoded_string
end

caesar_cipher("Brian's-encoded+STRING!", 3)