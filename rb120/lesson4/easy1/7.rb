# return the name of the object's class and the place in RAM

class Cube
  def initialize(volume)
    @volume = volume
  end
end

big_cube = Cube.new(5000)
puts big_cube
