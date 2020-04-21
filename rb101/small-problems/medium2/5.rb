def invalid?(sides)
  sides.any? {|num| num == 0} &&
  sides.max > sides.select {|num| num < sides.max}.sum
end

def triangle(num1, num2, num3)
  sides = [num1, num2, num3]
  case
  when sides.count(num1) == 3 && !invalid?(sides) then :equilateral
  when sides.count(sides.max) == 2 && !invalid?(sides) then :isosceles
  when sides.all? {|num| sides.count(num) == 1} && !invalid?(sides) then :scalene
  else :invalid
  end
end

p triangle(3, 3, 3)# == :equilateral
p triangle(3, 3, 1.5)# == :isosceles
p triangle(3, 4, 5)# == :scalene
p triangle(0, 3, 3)# == :invalid
p triangle(3, 1, 1)# == :invalid


