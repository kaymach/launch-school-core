class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

test1 = AngryCat.new(5, "Charlie")
test2 = AngryCat.new(12, "Harold")
