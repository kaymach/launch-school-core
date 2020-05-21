# 1-6.
module Driftable
  def drift
    "I'm drifting!"
  end
end

class Vehicle
  attr_accessor :year, :color, :model
  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts @@number_of_vehicles
  end

  def initialize(y, c, m)
    self.year = y
    self.color = c
    self.model = m

    @current_speed = 0
    @@number_of_vehicles += 1
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

  def self.gas_mileage(miles, gallon)
    miles/gallon
  end

  def spray_paint(color)
    self.color = color
    puts "The vehicle is now #{color}."
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year
  end  
end

class MyCar < Vehicle
  include Driftable

  NUMBER_OF_DOORS = 2

  def to_s
    "You have a #{year} #{model} and it's color is #{color}."
  end
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "You have a #{year} #{model} and it's color is #{color}."
  end
end

nissan = MyCar.new(1990, "gold", "240sx")
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

Vehicle.number_of_vehicles

puts "---"
puts Vehicle.ancestors
puts "---"
puts MyCar.ancestors
puts "---"
puts MyTruck.ancestors
puts "---"

puts nissan.age

# 7.
class Student
attr_accessor :name
attr_writer :grade

def initialize(name, grade)
  @name = name
  @grade = grade
end

def better_grade_than?(other)
  @grade > other.grade
end

protected

attr_reader :grade
end

joe = Student.new("Joe", 95)
bob = Student.new("Bob", 74)

puts "Well done!" if joe.better_grade_than?(bob)

# 8.
# The method "hi" is private within that Person class. You can make it public within the class by
# moving it above the private method call.
