#1. creating a class and then using .new on that class assigned to a variable. this creates the object
class Car
  include Vehicle
end

windshield = Car.new

#2. share methods around to classes and mix them in. 
# keep all code in one place within the module and spread it out to classes.
module Vehicle
end
