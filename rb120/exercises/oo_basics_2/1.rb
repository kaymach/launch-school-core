class Cat
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end
end

Cat.generic_greeting

kitty = Cat.new
kitty.class.generic_greeting
# kitty.class = Cat so it ends up being Cat.generic_meeting
