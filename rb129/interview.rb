class Animal

  def rex
    self
  end

  def self.info
    "I am a #{self}"
  end
end

class Pet < Animal
   # code
end

class Dog < Pet
  attr_reader :nickname
  
  def initialize(name)
    @nickname = name
  end
    
  def introduce
    "#{self.class.info} and they call me #{rex.nickname}. Woof woof!"
  end
end

rex = Dog.new("Rex")
puts rex.introduce # Expected output: I am a Dog and they call me Rex. Woof woof!
