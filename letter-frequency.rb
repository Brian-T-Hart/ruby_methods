def letter_frequency
	puts "Type something and I will tell you how many times each letter occurs."
	text = gets.chomp.strip.downcase
	freqs = {}
	freqs.default = 0
	text.each_char { |char| freqs[char] += 1 }

	("a".."z").each { |x|
		if freqs[x]	!= 0
			puts "#{x}: #{freqs[x]} "
		end
	}
end

letter_frequency