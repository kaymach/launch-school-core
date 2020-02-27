def triangle(number)
  space = number - 1
  number.times do |num|
    puts (" "*space) + ("*"*(num+1))
    space -= 1
  end
end

triangle(5)
triangle(9)
