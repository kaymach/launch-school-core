# module Power
#   def delegate
#   end
# end

# module FullTime
#   def take_vacation
#   end
# end

# class Employee
#   def initialize(name)
#     @name = name
#     @serial_number = rand(000000000..999999999)
#   end

#   def to_s
#     "Name: #{@name}
#     Type: #{self.class}
#     Serial number: #{@serial_number}
#     Vacation days: #{@vacation_days}
#     Desk: #{@desk}"
#   end
# end

# class Executive < Employee
#   include FullTime
#   include Power

#   def initialize(name)
#     super
#     @vacation_days = 20
#     @desk = "corner"
#   end
# end

# class Manager < Employee
#   include FullTime
#   include Power

#   def initialize(name)
#     super
#     @vacation_days = 14
#     @desk = "private office"
#   end
# end

# class Regular < Employee
#   include FullTime

#   def initialize(name)
#     super
#     @vacation_days = 10
#     @desk = "cubicle"
#   end
# end

# class PartTime < Employee
#   def initialize(name)
#     super
#     @vacation_days = 0
#     @desk = "open workspace"
#   end
# end

# bob = Executive.new("Bob")
# mango = Manager.new("Mango")
# kevin = Regular.new("Kevin")
# phil = PartTime.new("Phil")

# puts bob
# puts mango
# puts kevin
# puts phil
# puts kevin.take_vacation
# # puts phil.take_vacation # this won't work, as part time employees can't take vacation!
# puts mango.delegate

class Person
  attr_accessor :name, :weight, :height
  @@number_of_people = 0

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @@number_of_people += 1
  end

  def self.total_people
    @@number_of_people
  end

  def change_info(name, weight, height)
    self.name = name
    self.weight = weight
    self.height = height
  end
end

bob = Person.new('bob', 185, 70)
Person.total_people       # this should return 1
