def sequence(number)
  array = []

  1.upto(number) do |number|
    array << number
  end
  array
end


p sequence(5)
p sequence(3)
p sequence(1)
