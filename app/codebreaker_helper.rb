def number_match(input)
	@guessed_number_array.each do |i|
		output.puts "-" if @secret_number_array.include?(i)
	end
end



def no_matches(input)
	if @match_count == 0
		output.puts ""
	end
end

def basic_setup(input)
	guessed_number_array(input)
	secret_number_array
	check_input_type(input)
	match_count(input)
end



def check_input_type(input)
	if @guessed_number_array.size !=4 || @guessed_number_array.include?(String)
		output.puts "Try guessing a number with four digits"
	end
end

def guessed_number_array(input)
	@guessed_number_array = input.to_s.chars.map(&:to_i)
end

def secret_number_array
	@secret_number_array = @secret_number.to_s.chars.map(&:to_i)
end

def match_count(input)
	count = 0
	guessed_array = guessed_number_array(input)
	secret_array = secret_number_array
	guessed_array.uniq.each do |digit|
		count += 1 if secret_array.include?(digit)
	end
	@match_count = count
end