# require 'pry'
class Calculator
  OPERATIONS = {
    'add' => '+',
    'sub' => '-',
    'mul' => '*',
    'div' => '/'
  }

  def initialize
    @current_result = nil
  end

  def calculate
    loop do
      puts "Write a operation like (add, sub, mul, div) or to exit press q "
      choice = gets.chomp.downcase
      break if choice == 'q'

      if OPERATIONS.key?(choice)
        num1 = get_first_number
        num2 = get_second_number
        @current_result = calculate_result(choice, num1, num2)
      else
        puts "Invalid operation. Please enter a valid one."
      end
    end
  end

  private

  def get_first_number
    if @current_result.nil?
      puts "Enter the first number:"
      input = gets.chomp
      if input.match?(/^\d+$/)
		    input = input.to_i
		  elsif input.match?(/^\d+\.\d+$/)
		    input = input.to_f
		  else
		  	"Invalid"
		  end
		  # input
    else
      puts "Use the current result #{@current_result} as the second number? (y/n)"
      choice = gets.chomp.downcase
      choice == 'y' ? @current_result : get_user_input("Enter the first number:")
    end
  end

  def get_user_input(prompt)
    puts prompt
    input = gets.chomp
    if input.match?(/^\d+$/)
	    input = input.to_i
	  elsif input.match?(/^\d+\.\d+$/)
	    input = input.to_f
	  else
	  	"Invalid"
	  end
	  # input
  end

  def get_second_number
    get_user_input("Enter the second number:")
  end

  def calculate_result(operation, num1, num2)
    @current_result = case operation
	    when 'add'
	      num1 + num2
	    when 'sub'
	      num1 - num2
	    when 'mul'
	      num1 * num2
	    when 'div'
	      # num2.zero? ? (puts "Zero is not divisible"; nil) : num1 / num2
	      remainder(num1,num2)
	    end
		puts "Total Result is : #{@current_result ? @current_result : 0} "
		@current_result
  end

  def remainder(num1,num2)
  	if (num1 && num2 != 0)
  		current_result = num1 / num2
  		result = num1.remainder(num2)
  		puts "Remainder is : #{result}"
  		current_result
  	else
  		puts "Zero is not divisible"
  	end
  end
end

calculator = Calculator.new
calculator.calculate
