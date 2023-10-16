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
        check_integer_float_result
      else
        puts "Invalid operation. Please enter a valid one."
      end
    end
  end

  private

  def get_first_number
    if @current_result.nil?
      puts "Enter the first number:"
      gets.chomp.to_f
    else
      puts "Use the current result #{@current_result} as the second number? (y/n)"
      choice = gets.chomp.downcase
      choice == 'y' ? @current_result : get_user_input("Enter the first number:").to_f
    end
  end

  def get_user_input(prompt)
    puts prompt
    gets.chomp
  end

  def get_second_number
    get_user_input("Enter the second number:").to_f
  end

  def calculate_result(operation, num1, num2)
    case operation
    when 'add'
      num1 + num2
    when 'sub'
      num1 - num2
    when 'mul'
      num1 * num2
    when 'div'
      num2.zero? ? (puts "Zero is not divisible"; nil) : num1 / num2
    end
  end

  def check_integer_float_result
  	if @current_result.is_a?(Integer)
	    puts "The result is a: #{@current_result}"
	  elsif @current_result.is_a?(Float)
	    puts "The result is a : #{@current_result}"
	  else
	    puts "The result is not a valid number."
	  end
	  @current_result
  end
end

calculator = Calculator.new
calculator.calculate



