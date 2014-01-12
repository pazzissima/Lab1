require './animal'
require './client'
require './shelter'

shelter = Shelter.new("HappiTails")
def menu message

	puts "Please choose from options: \n\n"

	puts "#{message}\n\n" unless message.empty?

	puts '1: Display all animals'
	puts '2: Display all clients'
	puts '3: Create an animal'
	puts '4: Create a client'
	puts '5: Adopt an animal'
	puts '6: Put an animal up for adoption' 
	puts "q: Quit\n\n"
	print '-->'
	gets.chomp
end

message = ""
choice = menu message
while choice != 'q'
	message = ""
	case choice
	when "1"
		available_pets = shelter.display_animals()
		message = "List of pets available for adoption:\n"
		available_pets.each do |pet|
			message += pet + " "
		end

	when "2"
		message = "Client list:\n"
		message += shelter.display_clients()

	when "3"
		puts "Enter animal info:"
		print "name:"; name = gets.chomp
		print "age:"; age = gets.chomp
		print "gender:"; gender = gets.chomp
		print "species:"; species = gets.chomp
		print "toys:"; toys = gets.chomp

		shelter.animals << Animal.new(name, age, gender, species, toys)
		message = "Added pet #{shelter.animals.last.number}"

	when "4"
		puts "Enter client info:"
		print "name:"; name = gets.chomp
		print "number of children:"; children_count = gets.chomp
		print "age:"; age = gets.chomp
		print "number of pets:"; pet_count = gets.chomp

		shelter.clients << Client.new(name, children_count, age, pet_count)
		message = "Added client #{shelter.clients.last.number}"

	when "5"
		puts "Choose animal for adoption:"
		shelter.display_animals.each do |animal|
			puts "#{animal.number}"
		end
		print "#:"; requested_animal_number = gets.chomp
		selected_animal = (shelter.animals.select {|animal| animal.number ==requested_animal_number}).first
		selected_animal.client = Client.new(name, childre_count, age, pets)
		message = "Client #{selected_animal.client.name} adopted animal #{selected_animal.number}"

	when "6"
		puts "Put an animal up for adoption:"
		print "name:"; name = gets.chomp
		print "age:"; age = gets.chomp
		print "gender:"; gender = gets.chomp
		print "species:"; species = gets.chomp
		print "toys:"; toys = gets.chomp

		shelter.animals << Animal.new(name, age, gender, species, toys)
		message = "Added pet #{shelter.animals.last}"

	else
		message += "I don't understand..."
	end
	choice = menu message
	end


