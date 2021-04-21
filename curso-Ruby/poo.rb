class Persona < Struct.new(:name, :age)
    def self.suggested_names
        ["pepe","pepito","sutano"]
    end
end

persona = Persona.new("pepe", 14)
puts persona.name
puts persona.age