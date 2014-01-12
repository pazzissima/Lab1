class Client
	attr_accessor :name, :children_count, :age, :pets

	def initialize (name, children_count, age, pets = [])
		@name = name
		@children_count = children_count
		@age = age
		@pets = pets
	end

	def adopt(animal)
		@pets.push(animal)
	end

	def put_for_adoption(animal)
		@pets.delete(animal)
	end
end

Maria = Client.new("Maria", 4, 45, 2)
Chris = Client.new("Chris", 0, 27, 1)
