class BasicSetup
	attr_reader :match_count, :secret_number_array, :guessed_number_array

	def initialize(input)
		@match_count = match_count(input)
		@secret_number_array = secret_number_array
		@guessed_number_array = guessed_number_array(input)
	end

	def match_count(input)
		count = 0
		guessed_array = guessed_number_array(input)
		secret_array = secret_number_array
		guessed_array.uniq.each do |digit|
			count += 1 if secret_array.include?(digit)
		end
		count
	end

	def guessed_number_array(input)
		@guessed_number_array = input.to_s.chars.map(&:to_i)
	end

	def secret_number_array
		@secret_number_array = @secret_number.to_s.chars.map(&:to_i)
	end


end
