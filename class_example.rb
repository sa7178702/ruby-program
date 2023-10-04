# Types of variable 

# 1- Local Variable - (a to z and _ )
# 2- Global Variable - $
# 3- Class Variable - @@
# 4- Instance Variable- @

class ClassExample

	def initialize(user)
		@user = user
	end

	def hello_world
		puts "Welcome to access method this is Instance method"
	end

	def self.hello_world
	   puts "This class Method"
    end
end

obj1 = ClassExample.new('abc')
obj1.hello_world

ClassExample.hello_world