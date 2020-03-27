require_relative 'skills'

class Animal
    include Skills::Walker
    attr_reader :name
    def initialize(name)
        @name = name
    end


end

#Animal

class Bird < Animal

end

class Mammal < Animal

end

class Insect < Animal
include Skills::Flying
end

#Birds

class Penguin < Bird
include Skills::Swimmer
end

class Dove < Bird

end

class Duck < Bird
    include Skills::Swimmer
end

#Mammals

class Dog < Mammal
 include Diet::Carnivorous
 include Skills::Swimmer
end

class Cat < Mammal 
    include Diet::Carnivorous
end

class Cow < Mammal
    include Diet::Herbivorous
end

#Insect

class Fly < Insect
    include Diet::Herbivorous
end

class Butterfly < Insect
    include Diet::Herbivorous
end

class Bee < Insect
    include Diet::Herbivorous
end
