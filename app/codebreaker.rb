require_relative 'codebreaker_helper.rb'

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
			output.puts @match_count == 0 ?  "" : number_match(input)
    end
  end
end
