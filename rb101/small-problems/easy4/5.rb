def multisum(number)
  ultimatemulti = threemulti(number) + fivemulti(number)
  ultimatemulti.uniq.sum
end

def threemulti(number)
  array = [0]
  base = 1
  until array.last > number
    array << (3 * base)
    base += 1
  end
  array.pop
  array
end

def fivemulti(number)
  array = [0]
  base = 1
  until array.last > number
    array << (5 * base)
    base += 1
  end
  array.pop
  array
end

puts multisum(3)
puts multisum(5)
puts multisum(10)
puts multisum(1000)
