class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

# @@cats_count = 0 initializes the class variable and then everytime a Cat object is created, it's going
# to increment the @@cats_count variable by 1

test1 = Cat.new("lala")
test2 = Cat.new("fala")

puts Cat.cats_count
