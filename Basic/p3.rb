class Customer

	def initialize(first_name,last_name,age)
		@fname = first_name
		@lname = last_name
		@age = age
	end

	def display_nane
		puts "My first name is #{@fname}"
		puts "My last name is #{@lname}"
		puts "My age is #{@age}"
	end

end

object = Customer.new("Shaukat", "Ali", "22")
object.display_nane
