class Shelter
	attr_accessor :clients, :animals

	def initialize(clients = [], animals = [])
        @clients = clients
        @animals = animals
    end

    def add_animal(animal)
        @animals.push(animal)
    end

    def add_client(client)
        @clients.push(client)
    end

    def display_clients
    	result = @clients.inject("") do |client_list_str, client|
            client_list_str << "#{client.name} "
        end
    
        result = result || ""
        puts result
    end

    def display_animals
        result = @animals.inject("") do |animal_list_str, animal|
            animal_list_str << "#{animal.name} "
        end
    
        result = result || ""
        puts result
    end
end

