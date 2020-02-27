def sequence(number1, number2)
  array = [number2]
  iterator = 1

  loop do
    if number1 == 0
    array = []
    break
    else
    array << array.last + number2
    iterator += 1
    break if iterator == number1
    end
  end
  array
end



p sequence(5, 1)
p sequence(4, -7)
p sequence(3, 0)
p sequence(0, 1000000)
