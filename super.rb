# Three examples from Cooper Chapter 6 here.
# Because both define a Peron class, one or the other must be
# commented out.

# Example one:
# This code illustrates the use of inheritance, of overriding
# an inherited method with a class-specific method, of the use
# of 'super' (line 17), and use of a ternary operator.
# It also shows use of the "instance_variables" method.

# class Person
# 	def initialize(name)
# 		@name = name
# 	end

# 	def name
# 		@name
# 	end
# end

# class Doctor < Person
# 	def name
# 		"Dr. " + super
# 	end
# end

# a = Person.new("Smith")
# puts a.name
# doc = Doctor.new("Maxwell")
# puts doc.name

# object = doc
# puts (object.class == Doctor ? "Dr. " : "Mr. ") + object.name

# puts doc.instance_variables

# Example 2: Here Cooper demonstates "encapsulation" with the 
# use of private and public.
# class Person
# 	def initialize(name)
# 		set_name(name)
# 	end

# 	def name
# 		"#{@first_name} #{@last_name}"
# 	end

# 	private # This is the key code.  See below.

# 	def set_name(name)
# 		first_name, last_name = name.split(/\s+/)
# 		set_first_name(first_name)
# 		set_last_name(last_name)
# 	end

# 	def set_first_name(name)
# 		@first_name = name
# 	end

# 	# public  # This is how we cancel the "private" above.

# 	def set_last_name(name)
# 		@last_name = name
# 	end
# 	# public :set_last_name #Alternate code, must come after method named.
# end

# p = Person.new("Bill Gates")
# puts p.name
# # Without private, code below resets the last name.
# # With, it results in an error.
# p.set_last_name("Clinton")
# puts p.name

# Example 3: use of "protected"
class Person
	def initialize(age)
		@age = age
	end

	def age
		@age
	end

	def age_difference_with(other_person)
		(self.age - other_person.age).abs
	end

	protected :age  #Without this line 95 works!
end

fred = Person.new(34)
chris = Person.new(25)
puts chris.age_difference_with(fred)
puts chris.age
