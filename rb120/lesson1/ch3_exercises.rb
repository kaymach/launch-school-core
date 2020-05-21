class MyCar
  attr_accessor :year, :color, :model

  def initialize(y, c, m)
    self.year = y
    self.color = c
    self.model = m
    
    @current_speed = 0
  end

  def speed_up(n)
    @current_speed += n
    puts "The car is now going an additional #{n} mph."
  end

  def brake(n)
    @current_speed -= n
    puts "The car is now slowing down by #{n} mph."
  end

  def shut_off
    @current_speed = 0
    puts "Parking car!"
  end

  def speedometer
    puts "The car is going #{@current_speed} mph."    
  end

  def to_s
    "You have a #{year} #{model} and it's color is #{color}."
  end

  def spray_paint(color)
    self.color = color
    puts "The car is now #{color}."
  end

  def self.gas_mileage(miles, gallon)
    miles/gallon
  end
end

nissan = MyCar.new(1990, "gold", "240sx")
puts nissan
nissan.speed_up(100)
nissan.speedometer
nissan.brake(20)
nissan.speedometer

nissan.spray_paint "blue"
puts nissan
puts nissan.year

puts MyCar.gas_mileage(200, 30)



#3. 
# We don't have a setter method.
# Adding attr_writer or just change attr_reader to attr_accessor so that it has a getter and setter method.
