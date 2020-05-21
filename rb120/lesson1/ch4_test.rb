# class Animal
  # def speak
    # "Hello!"
  # end
# end
# 
# class GoodDog < Animal
  # attr_accessor :name
# 
  # def initialize(n)
    # self.name = n
  # end
# 
  # def speak
    # "#{self.name} says arf!"
  # end
# end
# 
# class Cat < Animal
# end
# 
# sparky = GoodDog.new("Sparky")
# paws = Cat.new
# 
# puts sparky.speak
# puts paws.speak


# module Swimmable
#   def swim
#     "I'm swimming!"
#   end
# end

# class Animal
# end

# class Fish < Animal
#   include Swimmable
# end

# class Mammal < Animal
# end

# class Cat < Mammal
# end

# class Dog < Mammal
#   include Swimmable
# end


# module Walkable
#   def walk
#     "I'm walking."
#   end
# end

# module Swimmable
#   def swim
#     "I'm swimming."
#   end
# end

# module Climbable
#   def climb
#     "I'm climbing."
#   end
# end

# class Animal
#   include Walkable

#   def speak
#     "I'm an animal, and I speak!"
#   end
# end

# class GoodDog < Animal
#   include Swimmable
#   include Climbable
# end

module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end
end

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new

buddy.speak("Awooo")
kitty.say_name("kitty")
