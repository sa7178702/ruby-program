operations = {

	'add' => '+',
	'sub' => '-',
	'mul' => '*',
	'div' => '/' 
}
current_result = nil
loop do 
	puts "Enter the operations which one you want !"

	operations.each do |key, value|
		puts "#{key.capitalize} (#{value})"
	end
	puts "Enter the operations !"
	choise = gets.chomp.downcase

	break if choise == 'q'

	if operations.key?(choise)
		if current_result.nil?
      puts "Enter the first number:"
      num1 = gets.chomp.to_f
    else
      puts "Use the current result #{current_result} as the second number? (y/n)"
      # num1 = gets.chomp.downcase == 'y' ? current_result : gets.chomp.to_f
      if gets.chomp.downcase == 'y'
      	num1 = current_result
      else
      	puts "Enter the first number : "
      	num1 = gets.chomp.to_f
      end
    end

		puts "Enter the second number : "
		num2 = gets.chomp.to_f

		current_result = case choise
			when 'add'
				num1 + num2
			when 'sub'
				num1 - num2
			when 'mul'
				num1 * num2
			when 'div'
				if choise == 0
					puts "Zero is not divisible "
				else
					num1 + num2
				end
			end
		puts "current result : #{current_result}"
	else
		puts "Invalid operations Please enter valid one ?"
	end
end