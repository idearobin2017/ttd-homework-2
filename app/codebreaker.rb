class Codebreaker
  class Game
    attr_reader :output

    def initialize(output)
      @output = output
    end

    def start(secret_number)
      @secret_number = secret_number

      output.puts "Welcome to Codebreaker"
      output.puts "Enter guess:"
    end

    def guess(input)
			basic_setup(input)
			no_matches(input)
    end

		private

		def basic_setup(input)
			guessed_number_array(input)
			secret_number_array
			check_input_type(input)
			match_count(input)
		end

		def no_matches(input)
			if @match_count == 0
				output.puts ""
			end
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
  end
end
