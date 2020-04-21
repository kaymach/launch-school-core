def valid?(angle)
  angle.all? {|num| num > 0} &&
  angle.sum == 180
end

def triangle(num1, num2, num3)
  angle = [num1, num2, num3]
  case
  when angle.count(90) == 1 && valid?(angle) then :right
  when angle.all? {|num| num < 90} && valid?(angle) then :acute
  when angle.select {|num| num > 90}.size == 1 && valid?(angle) then :obtuse
  else :invalid
  end
end

p triangle(60, 70, 50)# == :acute
p triangle(30, 90, 60)# == :right
p triangle(120, 50, 10)# == :obtuse
p triangle(0, 90, 90)# == :invalid
p triangle(50, 50, 50)# == :invalid
