class Animal 
	attr_accessor :name, :age, :gender, :species, :toys

	def initialize(name, age, gender, species, toys = [])
		@name = name
		@age = age
		@gender = gender
		@species = species
		@toys = toys
	end

	# def animal_info
	# 	"Animal: #{name}, age: #{age}, gender: #{gender}, species: #{species}, toys: #{toys}"
	# end

end
