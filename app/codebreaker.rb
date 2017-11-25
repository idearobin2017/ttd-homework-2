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
			guessed_number_array(input)
			secret_number_array
			check_input_type(input)

    end

		private

		def check_input_type(input)
			output.puts "Try guessing a number with four digits" if
						(@guessed_number_array.size !=4 || @guessed_number_array.include?(String))
		end

		def guessed_number_array(input)
			@guessed_number_array = input.to_s.chars.map(&:to_i)
		end

		def secret_number_array
			@secret_number_array = @secret_number.to_s.chars.map(&:to_i)
		end
  end
end
