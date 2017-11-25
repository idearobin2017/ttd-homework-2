def number_match(input)
	exact_number_count = 0
	4.times do |index|
		exact_number_count += 1 if @guessed_number_array[index] == @secret_number_array[index]
	end
	"+" * exact_number_count << "-" * (@match_count - exact_number_count)
end

def basic_setup(input)
	guessed_number_array(input)
	secret_number_array
	check_input_type(input)
	match_count(input)
end

private

def check_input_type(input)
	output.puts "Try guessing a number with four digits" if
			@guessed_number_array.size !=4 ||
						@guessed_number_array.include?(String)
end

def guessed_number_array(input)
	@guessed_number_array = input.to_s.chars.map(&:to_i)
end

def secret_number_array
	@secret_number_array = @secret_number.to_s.chars.map(&:to_i)
end

def match_count(input)
	@match_count = 0
	@guessed_number_array.uniq.each do |digit|
		@match_count += 1 if @secret_number_array.include?(digit)
	end
end
